module ApplicationHelper
  def get_ogp(url)
    # yahoo は User-Agetの偽装必須
    user_agent = 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0)'
    html = open(url, 'User-Agent' => user_agent).read

    require 'nokogiri'
    doc = Nokogiri::HTML.parse(html, nil)
    title       = doc.xpath("//meta[@property='og:title']/@content").text
    description = doc.xpath("//meta[@property='og:description']/@content").text
    q_url       = doc.xpath("//meta[@property='og:url']/@content").text
    image_src   = doc.xpath("//meta[@property='og:image']/@content").text

    ogp = {title: title, description: description, url: q_url, image_src: image_src}
  end
end
