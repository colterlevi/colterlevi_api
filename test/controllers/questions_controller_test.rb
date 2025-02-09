require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get questions_url, as: :json
    assert_response :success
  end

  test "should create question" do
    assert_difference("Question.count") do
      post questions_url, params: { question: { category: @question.category, correct_answer: @question.correct_answer, difficulty: @question.difficulty, incorrect_answers: @question.incorrect_answers, question: @question.question, question_type: @question.question_type } }, as: :json
    end

    assert_response :created
  end

  test "should show question" do
    get question_url(@question), as: :json
    assert_response :success
  end

  test "should update question" do
    patch question_url(@question), params: { question: { category: @question.category, correct_answer: @question.correct_answer, difficulty: @question.difficulty, incorrect_answers: @question.incorrect_answers, question: @question.question, question_type: @question.question_type } }, as: :json
    assert_response :success
  end

  test "should destroy question" do
    assert_difference("Question.count", -1) do
      delete question_url(@question), as: :json
    end

    assert_response :no_content
  end
end
