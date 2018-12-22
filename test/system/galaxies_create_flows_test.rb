require "application_system_test_case"

class GalaxiesCreateFlowsTest < ApplicationSystemTestCase
  test 'create galaxies' do
    visit new_galaxy_url
    fill_in 'Title', with: 'Млечный путь'
    click_on 'Save'

    assert_text 'Млечный путь'
  end
end
