#! ruby -Ku
#
# ./read_csv.rb ./data/csv_sample.csv
#
require "csv"

# 引数チェック
if ARGV.size() == 0
    p "Usadge: $0 [csv file path]"
    return
end

# CSVファイルから読み込んで処理...
csv_file_path = ARGV[0]
csv_data = CSV.read(csv_file_path, headers: false)
csv_data.each do |row|
  # とりあえず読んだものを出力...
  p row
end

