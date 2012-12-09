module PetsHelper
  def fix_url(url)
    if !url.start_with?("http://","https://")
      url="http://"+url
    end
    url
  end
end
