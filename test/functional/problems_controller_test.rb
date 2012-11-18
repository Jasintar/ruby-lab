require 'test_helper'

class ProblemsControllerTest < ActionController::TestCase
  setup do
    @controller = ProblemsController.new
    @problem = problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create problem" do
    assert_difference('Problem.count') do
      post :create, problem: { body: @problem.body, input: @problem.input, output: @problem.output, prefix: @problem.prefix, title: @problem.title }
    end

    assert_redirected_to problem_path(assigns(:problem))
  end

  test "should show problem" do
    get :show, id: @problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @problem
    assert_response :success
  end

  test "should update problem" do
    put :update, id: @problem, problem: { body: @problem.body, input: @problem.input, output: @problem.output, prefix: @problem.prefix, title: @problem.title }
    assert_redirected_to problem_path(assigns(:problem))
  end

  test "should destroy problem" do
    assert_difference('Problem.count', -1) do
      delete :destroy, id: @problem
    end

    assert_redirected_to problems_path
  end

  test "should done problem" do
    problem = FactoryGirl.build(:unprepared_problem)
    problem.save
    get :done, id: problem.id
    assert_redirected_to problem_path(assigns(:problem))
  end

  test "should unroll problem" do
    problem = FactoryGirl.build(:prepared_problem)
    problem.save
    get :unroll, id: problem.id
    assert_redirected_to problem_path(assigns(:problem))
  end

  test "should done problem fail" do
    problem = FactoryGirl.build(:prepared_problem)
    problem.save
    get :done, id: problem.id
    assert_response :success
  end

  test "should unroll problem fail" do
    problem = FactoryGirl.build(:unprepared_problem)
    problem.save
    get :unroll, id: problem.id
    assert_response :success
  end

end
