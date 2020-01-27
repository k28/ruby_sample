#! ruby -Ku

require "date"

# 日付を作成
date_val = Date.new(2020, 7, 24)
# 日付を加算 (1日進める)
date_val_1 = date_val + 1
# 文字列に変換
date_str  = date_val.strftime("%Y-%m-%d")
# 比較
if date_val_1 > date_val
  puts "#{date_val_1}"
end


