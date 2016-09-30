$(document).ready(function() {
  $(".question").on('submit', function(event){
    event.preventDefault();
    // console.log('answer button')

    formAction = $('#answer').attr("action");
    formMethod = $('#answer').attr("method");
    formData   = $('#answer').serialize();

    // console.log(formAction);
    // console.log(formMethod);
    // console.log(formData);

    request = $.ajax({
      url:    formAction,
      method: formMethod,
      data:  formData
    })

    request.done(function(response){
      console.log(response);
      $("#answer_wrapper").html(response);
      // $(".question").append(response);
    })

    request.fail(function(response){
      alert('BROKEN');
    })


  })

});
