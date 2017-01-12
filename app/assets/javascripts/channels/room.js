App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function(){},
  
  disconnected: function(){},

  received: function(){
    // console.log(typeof(result));

    // $('#messages').append(data['message']);

    // console.log(typeof(myChart.data.datasets[0].data));

    $.getJSON('messages', function(dataResults) {
      console.log(dataResults);
      myChart.data.datasets[0].data = dataResults;
      myChart.update();
    });
  }

  // speak: function(message){
  //   console.log(message + " from speak");
  //   perform('speak'){ 
  //     message: message
  //   }
  // };

});