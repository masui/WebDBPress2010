# -*- coding: utf-8 -*-
# 100枚のスライドが全部表示されるにはどれぐらいかかるか
#

n = (ARGV.shift || 100).to_i          # スライドの数
trials = (ARGV.shift || 10000).to_i   # 試行回数
histdiv = (ARGV.shift || 20).to_i     # ヒストグラムの粒度
lim = (ARGV.shift || 2000).to_i       # 表示上限
hist = []                             # ヒストグラム

trials.times {
  shown = []
  nshown = 0
  count = 0
  while nshown < n do
    ind = rand(n)
    if !shown[ind] then
      shown[ind] = true
      nshown += 1
    end
    count += 1
  end
  hist[count/histdiv] = hist[count/histdiv].to_i + 1
}

100000.times { |i|
  puts "#{i*histdiv} #{hist[i].to_i}"
  break if i*histdiv >= lim
}


