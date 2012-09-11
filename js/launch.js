$(document).ready(function() {

  $('.skype-action li').click(function() {
    // turn this into jquery object
    var $this = $(this);
    
    var params = { 
      'q': $this.attr('data-action')
    };
            
    var callback = function(response) {
      response = $.parseJSON(response);
            
      if (response.status == 'true') {
        switch(response.cmd) {

          case 'hangup':
            $('li[data-action=answer]').hide();
            $('li[data-action=hangup]').show();
            break; 

          case 'answer':
            $('li[data-action=hangup]').hide();
            $('li[data-action=answer]').show();
            break; 

          case 'resume':
            $('li[data-action=hold]').hide();
            $('li[data-action=resume]').show();
            break; 

          case 'hold':
            $('li[data-action=resume]').hide();
            $('li[data-action=hold]').show();
            break; 
      
          case 'mute':
            $('li[data-action=mute]').toggleClass('muted');
            break;

          case 'unmute':
            $('li[data-action=mute]').toggleClass('muted');          
            break;

        }
      }
    }
  
    // Send post to server
    $.post('http://localhost/personal/launch/run.php', params, callback);
  });
  
});
