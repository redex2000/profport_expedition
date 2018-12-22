require "application_system_test_case"

class ExpeditionsCreateFlowsTest < ApplicationSystemTestCase
  test 'should create expedition' do
    visit new_expedition_url
    fill_in "Title", with: 'На Торманс'
    click_on 'Save'

    assert_text 'Экспедиция: на торманс'

  end
end
