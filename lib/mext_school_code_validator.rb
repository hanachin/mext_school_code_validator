# frozen_string_literal: true

require "active_model"
require "active_model/validator"

# 文科省学校コードのバリデーションを行うバリデーター
class MextSchoolCodeValidator < ActiveModel::EachValidator
  LENGTH = 13
  SCHOOL_TYPE_ALPHABET_MAP = {
    "A" => "01", "B" => "02", "C" => "03", "D" => "04", "E" => "05",
    "F" => "06", "G" => "07", "H" => "08"
  }.freeze
  VALID_ORG_TYPE_REGEXP = /[123]/.freeze
  VALID_PREFECTURE_NO_REGEXP = /..(?:0[1-9]|(?:[1-3][0-9])|(?:4[0-7]))/.freeze
  VALID_SCHOOL_NO_REGEXP = /[1-9][0-9]{6}/.freeze
  VALID_SCHOOL_TYPE_REGEXP = /A1|A2|B1|C1|C2|D1|D2|E1|F1|F2|G1|H1|H2/.freeze

  def validate_each(record, attribute, value) # rubocop:disable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity
    value = value.presence.to_s

    if value.length != LENGTH
      record.errors.add(attribute, (options[:message] || :wrong_length), count: LENGTH)
    elsif !value.start_with?(VALID_SCHOOL_TYPE_REGEXP)
      school_type = value[0, 2]
      message = (options[:message] || :mext_school_code_invalid_school_type)
      record.errors.add(attribute, message, school_type: school_type)
    elsif !value.start_with?(VALID_PREFECTURE_NO_REGEXP)
      prefecture_no = value[2, 2]
      message = (options[:message] || :mext_school_code_invalid_prefecture_no)
      record.errors.add(attribute, message, prefecture_no: prefecture_no)
    elsif !value[4].match?(VALID_ORG_TYPE_REGEXP)
      message = (options[:message] || :mext_school_code_invalid_org_type)
      record.errors.add(attribute, message, org_type: value[4])
    elsif !value[5, 7].match?(VALID_SCHOOL_NO_REGEXP)
      message = (options[:message] || :mext_school_code_invalid_school_no)
      record.errors.add(attribute, message, school_no: value[5, 7])
    elsif calculate_check_digit(value).to_s != value[-1]
      message = (options[:message] || :mext_school_code_invalid_check_digit)
      record.errors.add(attribute, message, expected: calculate_check_digit(value), actual: value[-1])
    end
  end

  private

  def calculate_check_digit(value) # rubocop:disable Metrics/AbcSize
    numerized_school_code = value.sub(/\A[A-H]/, SCHOOL_TYPE_ALPHABET_MAP)[0...-1]
    products = numerized_school_code.chars.map(&:to_i).zip([1, 2].cycle).map { _1 * _2 }
    (10 - (products.map { _1 >= 10 ? _1.digits.sum : _1 }.sum % 10)) % 10
  end
end

begin
  require "rails"
  require_relative "mext_school_code_validator/engine"
rescue LoadError
  # Do nothing
end
