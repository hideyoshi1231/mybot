cronJob = require('cron').CronJob

module.exports = (robot) ->


  # Crontabの設定方法と基本一緒 *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  # #your_channelと言う部屋に、平日の18:30時に実行
  new cronJob('0 * * * * 1-5', () ->
    # ↑のほうで宣言しているsendメソッドを実行する
    robot.send "@here どう？？"
  ).start()

  # #your_channelと言う部屋に、平日の13:00時に実行
  new cronJob('0 00 13 * * 1-5', () ->
    robot.send "@here ランチの時間だよ！！"
  ).start()