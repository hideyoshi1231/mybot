cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '*/5 * * * * 1-5', () =>
    robot.send  "ちゃんとやってる？？"
  , null, true, "Asia/Tokyo"