$("#btn").click(function() {
    var cityname ="";
    var countrycode="";
    
    $.ajax({
    url : "https://freegeoip.net/json/",
  dataType : "jsonp",
  error: function(request, status, error) { alert(request.error) },
  success : function(parsed_json) {
    var cityname = parsed_json['city'];
    var citycode = parsed_json['country_code'];
    var countrycode = parsed_json['country_code'];
     var ip =  parsed_json['ip'];
      $('#api2').html("<strong style='color: #428BCA'> Data from Freegeoip API </strong>");
     $('#ip').html("<strong>Current IP Address: </strong> " + ip +"");
     $('#country').html("<strong>Country Name: </strong>"+ parsed_json['country_name'] + "");
      $('#city').html("<strong>City: </strong>"+ parsed_json['city']+"");
       $('#zip').html("<strong>Zip Code: </strong>"+ parsed_json['zipcode']+"");
      
     weatherservice(cityname , citycode);
     yahoo(countrycode);
      
  }
    });
    
    
  function weatherservice(cityname,citycode)
       { 
    
       var c = cityname;
       var code = citycode;
       $.ajax({
      url : "http://api.openweathermap.org/data/2.5/weather?q="+ c +","+ code +"",
  dataType : "jsonp",
  error: function(request, status, error) { alert(request.error) },
  success : function(parsed_json) {
       var cel =  parsed_json['main']['temp'] - 273.15;
       var cel = cel.toFixed(1);
         $('#api').html("<strong style='color: #428BCA'>Data from OpenWeather API </strong>");
      $('#temp').html("<strong>Current temperature: </strong> " + cel +" celsius");
      $('#humidity').html("<strong>Humidity: </strong>"+ parsed_json['main']['humidity'] + "%");
      $('#wind').html("<strong>Wind Speed: </strong>"+ parsed_json['wind']['speed'] +"mps");
      
  }

  });
  }
    
    
     function yahoo(countrycode)
       { 
    
       var c = countrycode;
       
       $.ajax({
      url : "http://where.yahooapis.com/v1/states/"+c+"?appid=19697933560ef16dde5f6a4e043d4cf2&format=json",
  dataType : "jsonp",
  error: function(request, status, error) { alert(request.error) },
  success : function(parsed_json) {
       $('#api1').html("<strong style='color: #428BCA'>Data from Yahoo WOEID API </strong>");
      $('#states').html("<strong>No of States in " + c +" are</strong> : "+parsed_json['places']['total']+"");
      
      
  }

  });
  }
});



      
      
     

      


    
    
   