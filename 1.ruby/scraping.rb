require 'httparty'

require 'nokogiri'

url = 'http://news.naver.com/main/list.nhn?mode=LPOD&mid=sec&sid1=001&sid2=140&oid=001&isYeonhapFlash=Y&aid=0009662620'

response = HTTParty.get(url) #HTTParty를 통해 url에 있는 정보를 가져온다.

text = Nokogiri::HTML(response.body) # nokorigi를 통해 정보를 쉽게 가져올 수 있게 한다.

# Nokogiri::XML(File.read("parts.xml")) XML 파싱 할 때 사용한다.

kospi = text.css('#main_content > div.list_body.newsflash_body > div > dl > dt:nth-child(2) > a') #.css를 통해 셀렉터를 기준으로 요소를 검색한다.

puts kospi.text # .text를 쓰는 이유는 tag 안에 있는 요소를 가져오기 위해서 이다.

