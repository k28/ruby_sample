#! ruby -Ku
#
# if while for
#

flag = true

#
# if
#
if flag
  puts "true"
else
  puts "false"
end

#
# for
# do -> optional
for i in 0...5 do
  # 0 1 2 3 4
  puts i
end

#
# while
#

index = 10
while flag
  index += 1
  if index > 10
    # 11
    puts index
    break
  end
end


