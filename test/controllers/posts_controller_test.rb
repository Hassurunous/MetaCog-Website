require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

    test "can access new posts url" do
        assert new_post_url
    end

    test "can save posts" do
        p = Post.create(title: "Post1", body:"The very first post!")
        assert p.save
    end

end
