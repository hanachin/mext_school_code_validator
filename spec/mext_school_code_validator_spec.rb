# frozen_string_literal: true

RSpec.describe MextSchoolCodeValidator, type: :model do
  subject { School.new }

  it { is_expected.to allow_value("F139190110515").for(:mext_school_code) }
  it { is_expected.to allow_value("F139290110531").for(:mext_school_code) }
  it { is_expected.to allow_value("F139290000026").for(:mext_school_code) }
  it { is_expected.to allow_value("F139390110557").for(:mext_school_code) }
  it { is_expected.to allow_value("F139390000024").for(:mext_school_code) }
  it { is_expected.to allow_value("F239390110565").for(:mext_school_code) }
  it { is_expected.to allow_value("G139190110577").for(:mext_school_code) }
  it { is_expected.to allow_value("B139190000027").for(:mext_school_code) }
  it { is_expected.to allow_value("B139290002265").for(:mext_school_code) }
  it { is_expected.to allow_value("B139390000032").for(:mext_school_code) }
  it { is_expected.to allow_value("C139190000025").for(:mext_school_code) }
  it { is_expected.to allow_value("C139290001200").for(:mext_school_code) }
  it { is_expected.to allow_value("C139390000094").for(:mext_school_code) }
  it { is_expected.to allow_value("D139290000389").for(:mext_school_code) }
  it { is_expected.to allow_value("D139390000109").for(:mext_school_code) }
  it { is_expected.to allow_value("A139190000029").for(:mext_school_code) }
  it { is_expected.to allow_value("A139290000152").for(:mext_school_code) }
  it { is_expected.to allow_value("A139390000258").for(:mext_school_code) }
  it { is_expected.to allow_value("H139290000031").for(:mext_school_code) }
  it { is_expected.to allow_value("H139390000262").for(:mext_school_code) }
  it { is_expected.to allow_value("H239390000083").for(:mext_school_code) }
  it { is_expected.to allow_value("E139290000162").for(:mext_school_code) }
  it { is_expected.to allow_value("E139290000171").for(:mext_school_code) }
  it { is_expected.to allow_value("E139190000020").for(:mext_school_code) }
  it { is_expected.to allow_value("E139290000180").for(:mext_school_code) }
  it { is_expected.to allow_value("E139390000026").for(:mext_school_code) }
  it { is_expected.to allow_value("A239290000106").for(:mext_school_code) }
  it { is_expected.to allow_value("A239390000104").for(:mext_school_code) }
  it { is_expected.to allow_value("C239290000059").for(:mext_school_code) }

  it { is_expected.not_to allow_value("foo").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    is the wrong length (should be 13 characters)
  MESSAGE

  it { is_expected.not_to allow_value("abc0000000000").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の学校種が不正です(ab)
  MESSAGE

  it { is_expected.not_to allow_value("A100000000000").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の都道府県番号が不正です(00)
  MESSAGE

  it { is_expected.not_to allow_value("A148000000000").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の都道府県番号が不正です(48)
  MESSAGE

  it { is_expected.not_to allow_value("A10A000000000").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の都道府県番号が不正です(0A)
  MESSAGE

  it { is_expected.not_to allow_value("A101000000000").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の設置区分が不正です(0)
  MESSAGE

  it { is_expected.not_to allow_value("A101400000000").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の設置区分が不正です(4)
  MESSAGE

  it { is_expected.not_to allow_value("A101101234567").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の学校番号が不正です(0123456)
  MESSAGE

  it { is_expected.not_to allow_value("A1011123456x8").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の学校番号が不正です(123456x)
  MESSAGE

  it { is_expected.not_to allow_value("F139190110519").for(:mext_school_code).with_message(<<~MESSAGE.chomp) }
    の検査数字が不正です(期待する値:5 実際の値:9)
  MESSAGE
end
