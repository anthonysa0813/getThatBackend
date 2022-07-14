require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url, as: :json
    assert_response :success
  end

  test "should create post" do
    assert_difference("Post.count") do
      post posts_url, params: { post: { active: @post.active, address: @post.address, area: @post.area, bathroom_count: @post.bathroom_count, bedrooms_count: @post.bedrooms_count, description: @post.description, maintance: @post.maintance, montly_price: @post.montly_price, operation_type: @post.operation_type, pets_allow: @post.pets_allow, property_type: @post.property_type, user_id: @post.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show post" do
    get post_url(@post), as: :json
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { active: @post.active, address: @post.address, area: @post.area, bathroom_count: @post.bathroom_count, bedrooms_count: @post.bedrooms_count, description: @post.description, maintance: @post.maintance, montly_price: @post.montly_price, operation_type: @post.operation_type, pets_allow: @post.pets_allow, property_type: @post.property_type, user_id: @post.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy post" do
    assert_difference("Post.count", -1) do
      delete post_url(@post), as: :json
    end

    assert_response :no_content
  end
end
