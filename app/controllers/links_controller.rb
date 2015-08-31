class LinksController < ApplicationController
  def create
    # get ogp by nokogiri
    # yahoo は User-Agetの偽装必須
    user_agent = 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0)'
    url = "http://www.yahoo.co.jp"
    html = open(url, 'User-Agent' => user_agent).read

    require 'nokogiri'
    doc = Nokogiri::HTML.parse(html, nil)
    title = doc.xpath("//meta[@property='og:title']/@content").text

    @ogp = {title: title}
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
  end
end
