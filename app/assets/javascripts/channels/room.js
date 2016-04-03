App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {},
  disconnected: function() {},
  received: function(data) {
    $('#messages').append(data['message']);
  },
  speak: function(message) {
    this.perform('speak', { message: message });
  }
});

$(document).on('keypress', '[data-behavior~=room_speaker]', function(e) {
  if (e.keyCode === 13) {
    App.room.speak(e.target.value);
    e.target.value = '';
    return e.preventDefault();
  }
});
