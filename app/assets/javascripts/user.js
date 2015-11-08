console.log("user.js loaded!")

$(function() {
  setTimeout(updateMessages, 5000);
});

function updateMessages() {
  console.log('Running updatemessages');
  $campaignTemplate = $('#display-campaign')[0];
  if ($campaignTemplate){
    var campaignTemplate = Handlebars.compile($('#display-campaign').html());
    var campaigns = $('.campaigns');
    console.log(campaigns);
  }
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
