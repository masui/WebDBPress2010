# -*- coding: utf-8 -*-
trials = (ARGV.shift || 10000).to_i   # 試行回数
boys = 0;  girls = 0
BOY = 0; GIRL = 1

trials.times {
  # ふたりの子供の性別をランダムにセット
  gender = []
  gender[0] = rand(2)
  gender[1] = rand(2)

  # 一方が男の子だった場合だけ計算
  if gender[0] == BOY || gender[1] == BOY then
    # 男の子のどちらかを選択してind1に格納
    if gender[0] == BOY && gender[1] == BOY
      ind1 = rand(2)
    elsif gender[0] == BOY
      ind1 = 0
    elsif gender[1] == BOY
      ind1 = 1
    end
    # もう一方をind2に格納
    ind2 = (ind1 == 0 ? 1 : 0)

    boys  += 1 if gender[ind2] == BOY
    girls += 1 if gender[ind2] == GIRL
  end
}
puts "BOY: #{boys}"
puts "GIRL: #{girls}"
puts "Ratio: #{boys.to_f/(boys+girls)}"
