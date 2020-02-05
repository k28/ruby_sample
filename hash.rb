#! ruby -Ku
#
# Hash (dictionary)
#

if __FILE__ == $0

  empty_hash = {}
  print "#{empty_hash}\n"
  print "#{empty_hash.size}\n"

  same_hash = {"apple" => 10, "orange" => 7, "banana" => 13}
  print "#{same_hash}\n"
  print "#{same_hash["apple"]}\n"
  print "#{same_hash.keys}\n"     # key全て取り出し
  print "#{same_hash.values}\n"   # value全て取り出し

  # Keyがあるか確認(has_keyでもOK), has_value?でvalueがあるか確認もできる
  if same_hash.key?("banana")
    print "hash has banana\n"
  end

  # Valueの追加/削除
  same_hash["pinapple"] = 17
  same_hash.delete("orange")
  print "#{same_hash}\n"

  same_hash.each{|key, value|
    print "#{key} #{value}\n"
  }

end
