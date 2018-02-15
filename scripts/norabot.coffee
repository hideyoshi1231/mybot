  # scripts/norabot.coffee
  #Commands:
  #  msg - Return a message msg
  #
    module.exports = (robot) ->
      flg = ""
      robot.hear /(.*)$/i, (msg) ->
        text = msg.message.text
        msg.send "#{text} #{flg}"
        flg = "echo"
        return
      robot.hear /badger/i, (res) ->
        res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS  #{flg}"
        flg = "badger"
        return
