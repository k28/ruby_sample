#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require "prime"

# 素数を求める
primes = Prime.each(100).select{|i| i}
puts primes.inspect

