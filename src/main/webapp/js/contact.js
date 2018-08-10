//email generate function
$(document).ready(function() {
    return $('#contact').submit(function(e) {
    // variables for email, name and message entered by user
    var email, message, name;
    name = document.getElementById('nameID');
    email = document.getElementById('emailID');
    message = document.getElementById('messageID');
    
    // if no values entered
    if (!name.value || !email.value || !message.value) {
      alertify.error('Please check your entries');
      return false;
    }
    // else sent it to 3rd part web site to generate email
    else {
      $.ajax({
        method: 'POST',
        // replace Organization email here //
        url: '//formspree.io/teamundefinedrmit@gmail.com',
        data: $('#contact').serialize(),
        datatype: 'json'
      });
      // prevent page reseting
      e.preventDefault();
      // reset fields user filled
      $(this).get(0).reset();
      
    }
  });
});