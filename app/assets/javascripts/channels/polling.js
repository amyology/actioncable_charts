App.cable.subscriptions.create(
  { channel: "PollingChannel", code: "example" },

  {
    connected: function() {
      console.log("connected");
    },

    disconnected: function() {
      console.log("disconnected");
    },

    rejected: function() {
      console.log("rejected");
    },

    received: function(data) {
      console.log(data);
    }
  }
);