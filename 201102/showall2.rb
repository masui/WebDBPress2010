# -*- coding: utf-8 -*-
# 100枚のスライドが全部表示されるにはどれぐらいかかるか
#
n = (ARGV.shift || 100).to_i          # スライドの数
trials = (ARGV.shift || 10000).to_i   # 試行回数
histdiv = (ARGV.shift || 10).to_i     # ヒストグラムの粒度
lim = (ARGV.shift || 1000).to_i       # 表示上限
hist = []                             # ヒストグラム

$randhist = []                        # ニセ乱数の過去値リスト

def rand2(n)
  # 出やすさを決めてprob[]に格納
  prob = []
  $randhist.each { |val|
    prob[val] = 1
  }
  # 特に最近出たものはハズす
  recentlen = 3
  recentlen = n-1 if recentlen >= n
  (1..recentlen).each { |i|
    break if $randhist[-i].nil?
    prob[$randhist[-i]] = 0
  }
  # 出てないもの優先で割り当て
  (0...n).each { |i|
    if !prob[i] then
      prob[i] = 10 # 2倍出やすい...だと生ぬるい
    end
  }

  # prob[] にもとづいてニセ乱数を計算
  a = []
  (0...n).each { |i|
    prob[i].times {
      a.push(i)
    }
  }
  v = a[rand(a.length)]

  # ヒストリ保存
  $randhist.shift if $randhist.length >= n
  $randhist.push(v)
  return v
end

trials.times {
  shown = []
  nshown = 0
  count = 0
  while nshown < n do
    ind = rand2(n)
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


