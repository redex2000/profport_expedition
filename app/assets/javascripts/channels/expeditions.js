App.cable.subscriptions.create("ExpeditionsChannel", {
  connected: function () {
    console.log('Привет, веб-сокет!');
  },
  received: function (data) {
    $("table#expeditions tbody").append(data['partial']);
  }
});