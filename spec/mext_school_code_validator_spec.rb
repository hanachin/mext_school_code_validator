# frozen_string_literal: true

RSpec.describe MextSchoolCodeValidator, type: :model do
  subject { School.new }

  # dummy
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

  # school type
  it { is_expected.to allow_value("A101210000010").for(:mext_school_code) }
  it { is_expected.to allow_value("A201210000019").for(:mext_school_code) }
  it { is_expected.to allow_value("B101210000018").for(:mext_school_code) }
  it { is_expected.to allow_value("C101210000016").for(:mext_school_code) }
  it { is_expected.to allow_value("C201210000015").for(:mext_school_code) }
  it { is_expected.to allow_value("D101210000014").for(:mext_school_code) }
  it { is_expected.to allow_value("D201210000013").for(:mext_school_code) }
  it { is_expected.to allow_value("E101210000011").for(:mext_school_code) }
  it { is_expected.to allow_value("F101210000019").for(:mext_school_code) }
  it { is_expected.to allow_value("F201210000018").for(:mext_school_code) }
  it { is_expected.to allow_value("G101210000017").for(:mext_school_code) }
  it { is_expected.to allow_value("H101210000015").for(:mext_school_code) }
  it { is_expected.to allow_value("H201210000014").for(:mext_school_code) }

  # prefecture no
  it { is_expected.to allow_value("B101210000009").for(:mext_school_code) }
  it { is_expected.to allow_value("B102210000008").for(:mext_school_code) }
  it { is_expected.to allow_value("B103210000007").for(:mext_school_code) }
  it { is_expected.to allow_value("B104210000006").for(:mext_school_code) }
  it { is_expected.to allow_value("B105210000005").for(:mext_school_code) }
  it { is_expected.to allow_value("B106210000004").for(:mext_school_code) }
  it { is_expected.to allow_value("B107210000003").for(:mext_school_code) }
  it { is_expected.to allow_value("B108210000002").for(:mext_school_code) }
  it { is_expected.to allow_value("B109210000001").for(:mext_school_code) }
  it { is_expected.to allow_value("B110210000008").for(:mext_school_code) }
  it { is_expected.to allow_value("B111210000007").for(:mext_school_code) }
  it { is_expected.to allow_value("B112210000006").for(:mext_school_code) }
  it { is_expected.to allow_value("B113210000005").for(:mext_school_code) }
  it { is_expected.to allow_value("B114210000004").for(:mext_school_code) }
  it { is_expected.to allow_value("B115210000003").for(:mext_school_code) }
  it { is_expected.to allow_value("B116210000002").for(:mext_school_code) }
  it { is_expected.to allow_value("B117210000001").for(:mext_school_code) }
  it { is_expected.to allow_value("B118210000000").for(:mext_school_code) }
  it { is_expected.to allow_value("B119210000009").for(:mext_school_code) }
  it { is_expected.to allow_value("B120210000006").for(:mext_school_code) }
  it { is_expected.to allow_value("B121210000005").for(:mext_school_code) }
  it { is_expected.to allow_value("B122210000004").for(:mext_school_code) }
  it { is_expected.to allow_value("B123210000003").for(:mext_school_code) }
  it { is_expected.to allow_value("B124210000002").for(:mext_school_code) }
  it { is_expected.to allow_value("B125210000001").for(:mext_school_code) }
  it { is_expected.to allow_value("B126210000000").for(:mext_school_code) }
  it { is_expected.to allow_value("B127210000009").for(:mext_school_code) }
  it { is_expected.to allow_value("B128210000008").for(:mext_school_code) }
  it { is_expected.to allow_value("B129210000007").for(:mext_school_code) }
  it { is_expected.to allow_value("B130210000004").for(:mext_school_code) }
  it { is_expected.to allow_value("B131210000003").for(:mext_school_code) }
  it { is_expected.to allow_value("B132210000002").for(:mext_school_code) }
  it { is_expected.to allow_value("B133210000001").for(:mext_school_code) }
  it { is_expected.to allow_value("B134210000000").for(:mext_school_code) }
  it { is_expected.to allow_value("B135210000009").for(:mext_school_code) }
  it { is_expected.to allow_value("B136210000008").for(:mext_school_code) }
  it { is_expected.to allow_value("B137210000007").for(:mext_school_code) }
  it { is_expected.to allow_value("B138210000006").for(:mext_school_code) }
  it { is_expected.to allow_value("B139210000005").for(:mext_school_code) }
  it { is_expected.to allow_value("B140210000002").for(:mext_school_code) }
  it { is_expected.to allow_value("B141210000001").for(:mext_school_code) }
  it { is_expected.to allow_value("B142210000000").for(:mext_school_code) }
  it { is_expected.to allow_value("B143210000009").for(:mext_school_code) }
  it { is_expected.to allow_value("B144210000008").for(:mext_school_code) }
  it { is_expected.to allow_value("B145210000007").for(:mext_school_code) }
  it { is_expected.to allow_value("B146210000006").for(:mext_school_code) }
  it { is_expected.to allow_value("B147210000005").for(:mext_school_code) }

  # org type
  it { is_expected.to allow_value("B101110000029").for(:mext_school_code) }
  it { is_expected.to allow_value("B101210000027").for(:mext_school_code) }
  it { is_expected.to allow_value("B101310000025").for(:mext_school_code) }

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
