$(document).ready(function() {

  $('.skype-action li').click(function() {
    // turn this into jquery object
    var $this = $(this);
    
    var params = { 
      'q': $this.attr('data-action')
    };
    
    var callback = function(response) {
      // This is the callback function
      // Response is usually a value or json string
      
      // Toggle a class of muted
      $('.skype-action').toggleClass('answer');
    }
  
    // Send post to server
    $.post('http://localhost/launch/run.php', params, callback);
  });
  
});