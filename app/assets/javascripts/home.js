$(document).ready(function(e) {
  console.log('the document is ready');
  if($('#join_form')) {
    $('#join_form button').click(function(click_e) {
      console.log('clicked the Join Game button');
    });
  }
});
