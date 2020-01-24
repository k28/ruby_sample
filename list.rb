#! ruby -Ku
#
#

if __FILE__ == $0

  emptylist = []
  print "#{emptylist}\n"

  list = [1, 2, 3, 4, 5]
  print "#{list}\n"     # [1, 2, 3, 4, 5]
  print "#{list[2]}\n"  # 3

  list.push(6)
  print "#{list}\n"     # [1, 2, 3, 4, 5, 6]

  list[2] = 7
  print "#{list}\n"     # [1, 2, 7, 4, 5, 6]

  list.insert(2, 8)
  print "#{list}\n"     # [1, 2, 8, 7, 4, 5, 6]

  list.delete(4)
  print "#{list}\n"     # [1, 2, 8, 7, 5, 6]

  # loop
  list.each{|val|
    print "#{val}\n"
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

  # その他の初期化方法
  list2 = Array.new(3, false)
  print "#{list2}\n"      # [false, false, false]

end

