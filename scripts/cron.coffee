cron = require('cron').CronJob

module.exports = (robot) ->

  # 特定のチャンネルへ送信するメソッド(定期実行時に呼ばれる)　
  send = (channel, msg) ->
    robot.send {room: channel}, msg

  # Crontabの設定方法と基本一緒 *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  # #your_channelと言う部屋に、平日の18:30時に実行
  new cronJob('*/5 * * * * 1-5', () ->
    # ↑のほうで宣言しているsendメソッドを実行する
    send  "@here どう？？"
  ).start()

  # #your_channelと言う部屋に、平日の13:00時に実行
  new cronJob('0 00 13 * * 1-5', () ->
    send  "@here ランチの時間だよ！！"
  ).start()