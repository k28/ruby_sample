#! ruby -Ku

if __FILE__ == $0

  str = "All work and no play makes Jack a dull boy."

  if str =~ /play/
    print "match\n"
  end

  if str =~ /^All\s(\w+)\s.*makes\s(\w+).*$/
    print "#{$1} and #{$2}\n" # work and Jack
  end

  original = "hello, world"
  # does not change the string in-place
  changed = original.sub(/hello/, "hey")
  print "#{changed}\n"  # hey, world
  print "#{original}\n" # hello, world

  # change the string in-place
  changed = original.sub!(/hello/, "hey")
  print "#{changed}\n"  # hey, world
  print "#{original}\n" # hey, world

  str = "hoge hoge foo bar"
  str.gsub!(/hoge/, "you")
  print "#{str}\n"  # you you foo bar

end


