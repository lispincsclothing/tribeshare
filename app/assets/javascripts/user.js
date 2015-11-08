

$(function() {
  setTimeout(createNewAnswer, 5000);
});



var createNewAnswer = function() {
    $.ajax({
      url: '/campaigns',
      type: 'GET',
      dataType: 'json'
    }).done(function(response) {
          // console.log("success", response);
            if (response != undefined) {
                renderNewAnswer(response);
                console.log(response);
            } else {
                console.log("fuck");
            }
        })
        .fail(function(response) {
            console.log("error", response);
        });

        setTimeout(createNewAnswer, 5000);
};

var renderNewAnswer = function(response) {
    console.log(response);
    var html = $('#new-answer-form').html();
    var generateNewAnswerForm = Handlebars.compile(html);
    $('#DocumentResults').html(generateNewAnswerForm(response));
};



// $(function() {
//   setTimeout(updateMessages, 5000);
// });
//
// function updateMessages() {
//   console.log('Running updatemessages');
//   $campaignTemplate = $('#display-campaign')[0];
//   if ($campaignTemplate){
//     var campaignTemplate = Handlebars.compile($('#display-campaign').html());
//     var campaigns = $('.campaigns');
//     console.log(campaigns);
//   }
//   $.ajax({
//       url: '/campaigns',
//       type: 'GET',
//       dataType: 'json',
//     })
//     .done(function(campaigns) {
//       console.log(campaigns);
//     })
//     .fail(function() {
//       console.log("error");
//     });
//
//   setTimeout(updateMessages, 5000);
// }
