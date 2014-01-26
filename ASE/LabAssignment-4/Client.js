var echo = function(dataPass) {
    $.ajax({
        type: "POST",
        url: "/echo/json/",
        data: dataPass,
        cache: false,
        success: function(json) {
            alert("Result=" + json.Result);
        }
    });
};
$('.list').live('click', function() {
    $.get("http://localhost/aspnet_client/CalculatorService/MathService.svc/add/10/20", function(data) {
        var json = {
            json: JSON.stringify(data),
            delay: 1
        };
        echo(json);
    });
});
