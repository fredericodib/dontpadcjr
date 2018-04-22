App.chat = App.cable.subscriptions.create { channel: "ChatChannel", room: document.querySelector('body').dataset.topicId},
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	if (data.id != id) 
  		$('textarea')[0].value = data.message.text


