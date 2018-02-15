  # scripts/norabot.coffee
  #Commands:
  #  msg - Return a message msg
  #
    module.exports = (robot) ->
      robot.hear /(.*)$/i, (msg) ->
        room = msg.envelope.room
        text = msg.message.text
        text_en = encodeURIComponent text
        if room == "test"
          msg.send room, "#{text} "