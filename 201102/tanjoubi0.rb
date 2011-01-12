# -*- coding: utf-8 -*-

n = (ARGV.shift || 50).to_i

p = 1.0
n.times { |i|
  p *= (365.0 - i) / 365.0
}
puts 1.0 - p
