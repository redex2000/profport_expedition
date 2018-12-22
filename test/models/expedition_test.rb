require 'test_helper'

class ExpeditionTest < ActiveSupport::TestCase
  test 'should save valid expedition' do
    expedition = build(:expedition)
    assert expedition.save
  end

  test 'should not save invalid expedition' do
    expedition = Expedition.new
    assert_not expedition.save
  end
end
