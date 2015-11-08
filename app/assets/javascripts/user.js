console.log("user.js loaded!")

$(function() {
  setTimeout(updateMessages, 5000);
});

function updateMessages() {
  console.log('Running updatemessages');
  $.ajax({
      url: '/campaigns',
      type: 'GET',
      dataType: 'json',
    })
    .done(function(campaigns) {
      console.log(campaigns.length);
    })
    .fail(function() {
      console.log("error");
    });
  setTimeout(updateMessages, 5000);
}
