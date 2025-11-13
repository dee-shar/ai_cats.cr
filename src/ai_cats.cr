require "json"
require "http/client"

class AiCats
  API_PATH = "v1"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "Accept" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://api.ai-cats.net")
    @http_client = HTTP::Client.new(uri)
  end

  def get_cat_image() : String
    @http_client.get("/#{API_PATH}/cat", headers: @headers).body
  end

  def get_cat_images_count() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/cat/count", headers: @headers).body)
  end

  def get_cat_theme_list() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/cat/theme_list", headers: @headers).body)
  end
end
