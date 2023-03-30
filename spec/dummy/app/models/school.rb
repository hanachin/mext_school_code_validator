# frozen_string_literal: true

class School
  include ActiveModel::API

  attr_accessor :mext_school_code

  validates :mext_school_code, mext_school_code: true
end
