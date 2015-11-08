
$(document).ready(function() {
console.log("user.js loaded!")

  var bindAnswerEvents = function() {
    $('.new_a').on('click', createNewAnswer);

};


var createNewAnswer = function(event) {
  console.log("you clicked me!")
    event.preventDefault();
    $.ajax({
      url: '/campaigns',
      type: 'GET',
      dataType: 'json'
    })
        .done(function(response) {
          console.log("success", response);
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
};

var renderNewAnswer = function(response) {
    console.log(response);
    var html = $('#new-answer-form').html();
    var generateNewAnswerForm = Handlebars.compile(html);
    $('#DocumentResults').append(generateNewAnswerForm(response));
};
bindAnswerEvents();
});

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
