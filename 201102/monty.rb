# -*- coding: utf-8 -*-
trials = (ARGV.shift || 100000).to_i   # 試行回数
fail = 0       # 当たりを引いた回数
success = 0    # ハズレを引いた回数

trials.times {
  # 0,1,2の3つのドアから当たりドアをランダムに決める
  # プレイヤーは0番のドア
  hit = []
  hit[rand(3)] = true

  # モンティ・ホールの操作
  # ランダムにドア1, 2を開けて、ハズレが出るまで繰り返す
  while true do
    opendoor = rand(2) + 1  # ランダムに1か2を選択
    break if ! hit[opendoor]
  end
  print "モンティは#{opendoor}番のドアを開けました。"

  if hit[0] then #
    success += 1; puts "当たりです!"
  else
    fail += 1; puts "ハズレです!"
  end
}

puts "Success: #{success}"
puts "Fail: #{fail}"
puts "Ratio: #{success.to_f/trials}"


  
