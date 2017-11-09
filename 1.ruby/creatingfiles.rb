#1. 특정 폴더로 들어간다.
#2. 파일을 생성한다.
#3. 내용을 작성한다. 

Dir.chdir("src")

puts Dir.pwd

# 30개의 파일을 만든다. 
# 1.txt ~ 30.txt
# 1.txt  => "1번째 내용" 2.txt => "2번째 내용"
30.times do |i|
   i +=1
   File.open(i.to_s + ".txt", "w") do |f|
    f.write(i.to_s+"번째 내용")
    end 
end



# 파일을 읽고,쓰고,지우고는 file.open을 쓴다. 
# r	읽기 전용으로 연다. 파일의 처음을 가리킨다.
# r+	읽기/쓰기로 연다. 파일의 처음을 가리킨다.
# w	쓰기 전용으로 연다. 파일이 존재한다면 덮어쓴다. 파일이 없다면, 새로운 파일을 만든다.
# w+	읽기/쓰기로 연다. 파일이 존재한다면 덮어쓴다. 파일이 없다면, 새로운 파일을 만든다.
# a	쓰기 전용으로 연다. 파일이 존재한다면, 파일의 끝을 가리킨다. 추가모드라고 보면 된다. 파일이 없다면 새로운 파일을 만든다.
# a+	읽기/쓰기로 연다. 파일이 존재한다면, 파일의 끝을 가리킨다. 추가모드다. 파일이 없다면 새로운 파일을 만든다.
# https://www.joinc.co.kr/w/Site/Ruby/File 

# creatingfiles.rb:13:in `+': String can't be coerced into Integer (TypeError) => 글자로 바꿔줘야함
        
