#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require "prime"

# 素数を求める
primes = Prime.each(100).select{|i| i}
puts primes.inspect

require 'bigdecimal'

# 大きな数を文字列に変換する(指数表現でなく)
b = BigDecimal(637924140000000000)
p b.to_s('F')  # 637924140000000000.0
p b.floor.to_s # 637924140000000000

