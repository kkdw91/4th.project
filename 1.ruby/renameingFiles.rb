# 해당 폴더로 들어간다.
# 폴더 안에 모든 파일을 돌면서 이름을 바꾼다.


# Dir.chdir("src")

# puts Dir.pwd

# 30.times do |i|
#   i +=1
#   File.rename(i.to_s + ".txt", "samsung"+i.to_s + ".txt") do |f|
#     end 
# end


# 1. 폴더 안으로 들어간다.
Dir.chdir("src")
# 2. 폴더 안을 돌면서 파일들의 이름을 가져온다.
# 3. files 배열 안에 바꾸고자 하는 모든 파일 이름을 넣는다. "1.txt" => "samsung1.txt"
# Dir.foreach(Dir.pwd) do |name|
#     puts name
# end

# puts Dir.entries(Dir.pwd)
# puts Dir.entries(Dir.pwd).select 
# files = Dir.entries(Dir.pwd).reject do|name|
#         name[0] == '.'
#         end
        
files = Dir.entries(Dir.pwd).reject {|name| name[0] == '.'} 
# Dir.pwd로 현재 디렉토리를 먼저 읽고, Dir.entries를 통해 그 디렉토리 안에 있는 파일들을 불러온다. 
# 그리고 reject를 통해 걸러낸다.


# put files

files.each do |f|
    File.rename(f,"samsung" + f)
end




