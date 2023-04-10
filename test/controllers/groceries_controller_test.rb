require "test_helper"

class GroceriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end

test "index" do
  get "/groceries.json"
  assert_response 200

  data = JSON.parse(response.body)
  assert_equal Grocery.count, data.length
end
