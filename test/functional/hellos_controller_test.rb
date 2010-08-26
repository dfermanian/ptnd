require 'test_helper'

class HellosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Hello.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Hello.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Hello.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to hello_url(assigns(:hello))
  end
  
  def test_edit
    get :edit, :id => Hello.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Hello.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Hello.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Hello.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Hello.first
    assert_redirected_to hello_url(assigns(:hello))
  end
  
  def test_destroy
    hello = Hello.first
    delete :destroy, :id => hello
    assert_redirected_to hellos_url
    assert !Hello.exists?(hello.id)
  end
end
