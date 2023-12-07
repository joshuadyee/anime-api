require "test_helper"

class AnimesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/animes.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Anime.count, data.length
  end
  
  test "show" do
    get "/animes/#{Anime.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal ["id", "title", "creator", "main_character", "episode_count", "years_run", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Anime.count", 1 do
      post "/animes.json", params: { title: "test anime", creator: "test creator", main_character: "test mc", episode_count: "test count", years_run: "test run"  }
    end
  end

  test "update" do
    anime = Anime.first
    patch "/animes/#{anime.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Anime.count", -1 do
      delete "/animes/#{Anime.first.id}.json"
      assert_response 200
    end
  end
end
