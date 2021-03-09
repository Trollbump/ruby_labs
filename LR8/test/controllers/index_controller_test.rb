require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get input_url
    assert_response :success
    assert_template 'input'
  end

  test "should get output" do
    post output_url
    assert_response :success
    assert_template 'output'
  end

  test 'should get 3 for 6' do
    post output_url, params: { num: 6 }
    assert_equal '3', assigns[:for_output][4][1]
    assert_nil assigns[:error_text]
  end

  test 'should get 3 for 3' do
    post output_url, params: { num: 3 }
    assert_equal '3', assigns[:for_output][4][1]
    assert_nil assigns[:error_text]
  end

  test 'should get error for no number' do
    temp = [["Step", "Value", "color:black"], ["Entered value", "", "color:pink"]]
    post output_url, params: { num: 'kek' }
    assert_equal 'Ну ты индеец, я балдею!', assigns[:error_text]
    assert_equal temp, assigns[:for_output]
  end
end
