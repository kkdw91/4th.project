require 'httparty' # 해당 주소의 html파일을 가져온다.
require 'nokogiri' # html의 원하는 정보를 쉽게 가져올 수 있다.

url = 'http://www.newsis.com/view/?id=NISX20171106_0000139941&cID=10809&pID=10800'

response = HTTParty.get(url)

text = Nokogiri::HTML(response.body)

headline = text.css('#article > div.article_tbx.mgt8.w970 > h1')

puts headline.text



