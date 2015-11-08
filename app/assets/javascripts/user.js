console.log("user.js loaded!")

$(function() {
  setTimeout(updateMessages, 5000);
});

function updateMessages() {
  console.log('Running updatemessages');
  $campaignTemplate = $('#display-campaign')[0];
  $.ajax({
      url: '/campaigns',
      type: 'GET',
      dataType: 'json',
    })
    .done(function(campaigns) {
      if ($campaignTemplate){
        console.log("In Campaign Template");
        var source = $('#display-campaign').html();
        campaigns.forEach(function(answer){
          answers.append(answerTemplate({answer:answer}));
        });
      }
      else {
        console.log("No Campaign Template!");
      }
    })
    .fail(function() {
      console.log("error");
    });

  setTimeout(updateMessages, 5000);
}
