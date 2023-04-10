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

test "create" do
  assert_difference "Grocery.count", 1 do
    post "/groceries.json", params: { name: "banana", price: 1, quantity: 2, category: "fruit" }
    assert_response 200
  end
end

test "show" do
  get "/groceriess/#{Grocery.first.id}.json"
  assert_response 200

  data = JSON.parse(response.body)
  assert_equal ["name", "price", "quantity", "category"], data.keys
end

test "update" do
  grocery = Grocery.first
  patch "/groceries/#{grocery.id}.json", params: { name: "Updated name" }
  assert_response 200

  data = JSON.parse(response.body)
  assert_equal "Updated name", data["name"]
end

test "destroy" do
  assert_difference "Grocery.count", -1 do
    delete "/groceries/#{Grocery.first.id}.json"
    assert_response 200
  end
end
