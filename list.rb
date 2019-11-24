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

end

