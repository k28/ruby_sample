#! ruby -Ku
#
#

if __FILE__ == $0

  emptylist = []
  print "#{emptylist}\n"

  list = [1, 2, 3, 4, 5]
  print "#{list}\n"           # [1, 2, 3, 4, 5]
  print "#{list[2]}\n"        # 3 添字に存在しないindexを指定するとnilが帰る
  print "#{list.size}\n"      # 5
  print "#{list.index(3)}\n"  # 2 引数の要素のIndexを探す, ないとnil

  # 追加
  list.push(6)
  print "#{list}\n"     # [1, 2, 3, 4, 5, 6]

  list[2] = 7
  print "#{list}\n"     # [1, 2, 7, 4, 5, 6]

  # 任意の位置に追加
  list.insert(2, 8)
  print "#{list}\n"     # [1, 2, 8, 7, 4, 5, 6]

  # 要素を指定して削除
  list.delete(4)
  print "#{list}\n"     # [1, 2, 8, 7, 5, 6]

  # 要素が含まれるか調べる
  puts list.include?(7) # true

  # loop
  list.each{|val|
    print "#{val}\n"
  }

  # indexつきでループ
  list.each_with_index{|n, idx|
    puts "#{idx} #{n}"
  }

  # 任意の条件で抽出
  print "#{list}\n"     # [1, 2, 8, 7, 5, 6]
  # 条件にマッチしたものを列挙
  new_list = list.select{|v| v > 5}
  print "#{new_list}\n"   # [8, 7, 6]

  # 条件にマッチしたものを削除
  new_list = list.reject{|v| v > 5}
  print "#{new_list}\n"   # [1, 2, 5]

  # 閾値でリストを分割
  new_list = list.partition{|v| v > 5}
  print "#{new_list}\n"   # [[8, 7, 6], [1, 2, 5]]

  # リストの組み合わせを生成する
  # combination          : 順序なし, 重複を許さない
  # repeated_combination : 順序なし, 重複を許可
  # permutation          : 順列, 重複を許さない
  # repeated_permutation : 順列, 重複を許可
  list.combination(5).each {|combiset|
    puts combiset.join(",")
  }

  # 要素を重複ありでn要素ずつに区切り、ブロックに渡して繰り返す
  puts "each_cons"
  list.each_cons(2){|v| p v}
  # [1, 2]
  # [2, 8]
  # [8, 7]
  # [7, 5]
  # [5, 6]
  # 要素をnずつ処理する
  puts "each_slice"
  list.each_slice(2){|v| p v}
  # [1, 2]
  # [8, 7]
  # [5, 6]

  # リストの合計を計算する
  puts list.inject(:+)
  # もしくは
  puts list.inject{|result, item| result += item}

  # その他の初期化方法
  list2 = Array.new(3, false)
  print "#{list2}\n"      # [false, false, false]

  # 2次元配列の初期化 (3 x 5の配列を0で初期化)
  parking = Array.new(3){Array.new(5){0}}
  # 多次元配列をDeepCopy
  parking_deepcopy = Marshal.load(Marshal.dump(parking))
  puts parking.inspect  # 配列をいい感じに文字列に変換


end

