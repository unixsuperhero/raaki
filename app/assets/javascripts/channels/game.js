var App = App || {};

// so now i'm getting ActionCable is not defined...

App.game = ActionCable.createConsumer();

App.matches = App.game.subscriptions.create('GameChannel', {
  received: function(data) {
    console.log({ 'data': data });
  },

  // renderChoice: function(data) {
  //   return "%p " + data.user + " " + data.choice;
  // }
});

