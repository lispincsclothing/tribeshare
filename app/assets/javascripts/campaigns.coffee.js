$(document).ready(function() {


SimplifyCommerce.hostedPayments(
        function(response) {
            // response handler
        },
        {
            scKey: "sbpb_MzQzY2EwMGYtNzcyMy00NDBlLWFmY2UtOWYxMTAwN2MxYjli",
            color: "#12B830",
            masterpass:true 
        }
    );

    var hostedPayments = SimplifyCommerce.hostedPayments(
        function(response) {
            var cardToken = response.cardToken;
            console.log(cardToken);
            // TODO: Pass token to the server & use Simplify's API to make a payment
        },
        {
            operation: 'create.token'
        }
    );
    /**
     * Handle the error response from the server call that
     * failed to make a payment from the card token.
     */
    function apiPaymentErrorHandler() {
        // re-enable the payment button, so the user can try again.
        hostedPayments.enablePayBtn();
        // TODO: Handle error
    }

    });
