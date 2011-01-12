# -*- coding: utf-8 -*-
n = (ARGV.shift || 50).to_i           # 人間の数
trials = (ARGV.shift || 10000).to_i   # 試行回数

match = 0 # 同じ誕生日の人がいた回数

trials.times {
  birthday = {}
  n.times { |i|
    day = rand(365)
    if birthday[day] then # 誕生日の衝突発見
      puts "#{birthday[day]}番目と#{i}番目が一致"
      match += 1
      break
    end
    birthday[day] = i
  }
}

puts match.to_f / trials.to_f
