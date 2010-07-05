require 'test_helper'

class CalculationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Calculation.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Calculation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Calculation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to calculation_url(assigns(:calculation))
  end
  
  def test_edit
    get :edit, :id => Calculation.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Calculation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Calculation.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Calculation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Calculation.first
    assert_redirected_to calculation_url(assigns(:calculation))
  end
  
  def test_destroy
    calculation = Calculation.first
    delete :destroy, :id => calculation
    assert_redirected_to calculations_url
    assert !Calculation.exists?(calculation.id)
  end
end
