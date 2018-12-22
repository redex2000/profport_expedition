require 'test_helper'

class GalaxyTest < ActiveSupport::TestCase
  test 'should save' do
    assert Galaxy.new(title: 'Млечный путь').save
  end
end
