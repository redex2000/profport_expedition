App.cable.subscriptions.create("ExpeditionsChannel", {
  connected: function () {
    console.log('Привет, веб-сокет!');
  },
  received: function (data) {
    if (data['action'] === 'create') {
      $("table#expeditions tbody").append(data['partial']);
    } else if (data['action'] === 'destroy') {
      $(`#row-${data['id']}`).remove();
    }
  }
});