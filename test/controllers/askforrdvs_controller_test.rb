require 'test_helper'

class AskforrdvsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get askforrdvs_new_url
    assert_response :success
  end

end
