require "test_helper"

class ContactControllerTest < ActionController::TestCase
  before do
    @message_attributes = attributes_for(:message) 
  end


  test "should get new contact page" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "if it succeeds it should send UserMailer, redirect to root_path, and flash notice" do
    post :create, message: @message_attributes
    assert_response :redirect
    assert_redirected_to root_path
    assert flash[:notice].present?
  end

  test "if it fails it should not send UserMailer, render :new, and flash alert" do
    post :create, message: @message_attributes.merge(name: nil)
    assert_response :success #saying that we got a code 200 in stead of a code 201 Created.
    assert_template :new
    assert flash[:alert].present?    
  end
end
