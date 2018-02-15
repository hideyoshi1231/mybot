  # scripts/norabot.coffee
  #Commands:
  #  msg - Return a message msg
  #
    module.exports = (robot) ->
      robot.hear /(.*)$/i, (msg) ->
        text = msg.message.text
        msg.send "#{text} "
      robot.hear /badger/i, (res) ->
        res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"