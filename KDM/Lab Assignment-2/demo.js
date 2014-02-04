$("#btn").click(function() {
    var cityname = $('#txt').val();
    var countrycode = $('#txt1').val();

  $.ajax({
  url : "http://api.wunderground.com/api/36b799dc821d5836/conditions/q/"+ countrycode+"/"+cityname+".json",
  dataType : "jsonp",
  error: function(request, status, error) { alert(request.responseText) },
  success : function(parsed_json) {

      $('#temp_f').html("<strong>Current temperature: </strong> " + parsed_json['current_observation']['temp_f']+" deg F");
      $('#feels').html("<strong>Feels like: </strong>"+ parsed_json['current_observation']['feelslike_f'] + " deg F");
      $('#wind_string').html("<strong>Wind: </strong>"+ parsed_json['current_observation']['wind_string']);
      
  }

  });
});