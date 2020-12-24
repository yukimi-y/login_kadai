user = User.first
Item.create!(name: "ホームズ", date: '2020-10-14', user_id: user.id)
Item.create!(name: "赤と黒", date: '2020-11-04', user_id: user.id)
Item.create!(name: "赤毛のアン", date: '2020-12-20', user_id: user.id)
puts "初期データの投入に成功しました！"