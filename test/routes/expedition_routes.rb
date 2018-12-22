require 'test_helper'

class ExpeditionRoutes < ActionDispatch::IntegrationTest
  test 'should recognizes show route' do
    assert_recognizes({ controller: 'expeditions', action: 'show', id: '1' },
        { path: '/expeditions/1', method: :get })
  end
end