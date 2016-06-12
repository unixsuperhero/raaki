App.matches = App.game.subscriptions.create('GameChannel', { received: function(data) {
  $("#choice").removeClass('hidden')
  return $("#choice").append(this.renderChoice(data));

  renderChoice: function(data) {
                  return "%p " + data.user + " " + data.choice;
                }
});
