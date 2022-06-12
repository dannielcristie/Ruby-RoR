import consumer from "./consumer"

const chatChannel = consumer.subscriptions.create("ChatChannel", {
  connected() {
    console.log('conectado ao chat room!')
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $('#messages').append(`<p>${data.message}</p>`)
    $('html, body').animate({ scrollTop: $(document).height() }, 0)
  },

  speak: function (message) {
    return this.perform('speak', { message })
  }
})

$(document).on('turbolinks:load', function () {
  $("#message_form").on('submit', function(e){
    e.preventDefault();
    let message = $('#message_to_sent').val();
    if (message.length > 0) {
      chatChannel.speak(message);
      $('#message_to_sent').val('')
    }
  });
})