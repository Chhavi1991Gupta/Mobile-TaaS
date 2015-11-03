$(document).ready(function() {
	//var arrayString = $("#h1").val().split(",");
	var tempString = new Array();
	//for(var i =0; i < arrayString.size() ;i++) 
	//{
		
	   //tempString.push($("#h1").val().split(","));
	//}
	alert("1");
	alert(document.getElementById('h1').value);
	
	//tempString = document.getElementById('h1').value;
	//alert(tempString);
	
	//alert(tempString[0]);
	//alert(tempString[1]);

    var doughnutData = [
        {
            value: 30,
            color:"#F7464A"
        },
        {
            value : 50,
            color : "#46BFBD"
        },
        {
            value : 100,
            color : "#FDB45C"
        },
        {
            value : 40,
            color : "#949FB1"
        },
        {
            value : 120,
            color : "#4D5360"
        }

    ];
    var lineChartData = {
        labels : [" ","  ","","","","",""],
        datasets : [
            {
                fillColor : "rgba(220,220,220,0.5)",
                strokeColor : "rgba(220,220,220,1)",
                pointColor : "rgba(220,220,220,1)",
                pointStrokeColor : "#fff",
                data : [65,59,90,81,56,55,40]
                //data : [tempString[0],tempString[1],tempString[2],tempString[3],tempString[4],tempString[5],tempString[6]]
            },
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,1)",
                pointColor : "rgba(151,187,205,1)",
                pointStrokeColor : "#fff",
                data : [28,48,40,19,96,27,100]
                //data : [tempString[0],tempString[1],tempString[2],tempString[3],tempString[4],tempString[5],tempString[6]]
            },
            {
                fillColor : "rgba(400,187,205,0.5)",
                strokeColor : "rgba(400,187,205,1)",
                pointColor : "rgba(400,187,205,1)",
                pointStrokeColor : "#fff",
                data : [40,8,50,79,26,57,10]
                //data : [tempString[0],tempString[1],tempString[2],tempString[3],tempString[4],tempString[5],tempString[6]]
            },
            {
                fillColor : "rgba(800,450,205,0.5)",
                strokeColor : "rgba(400,187,205,1)",
                pointColor : "rgba(400,187,205,1)",
                pointStrokeColor : "#fff",
                data : [30,08,35,49,56,27,70]
                //data : [tempString[0],tempString[1],tempString[2],tempString[3],tempString[4],tempString[5],tempString[6]]
            }
            
        ]

    };
    var pieData = [
    
    
        {
            title: 'Long Event',
            value: 40,
            color:"#C38630"
        },
        {
            value : 50,
            color : "#E0E4CC"
        },
        {
            value : 55,
            color : "#69D2E7"
        },
        {
            value : 35,
            color : "#F802E3"
        }

    ];
    var barChartData = {
        labels : ["January","February","March","April","May","June","July"],
        datasets : [
            {
                fillColor : "rgba(220,220,220,0.5)",
                strokeColor : "rgba(220,220,220,1)",
                //data : [65,59,90,81,56,55,40]
                data : [tempString[0],tempString[0],tempString[0],tempString[0],tempString[0],tempString[0],tempString[0]]
            },
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,1)",
                //data : [28,48,40,19,96,27,100]
                data : [tempString[0],tempString[0],tempString[0],tempString[0],tempString[0],tempString[0],tempString[0]]
            }
        ]

    };
    var chartData = [
        {
            value : Math.random(),
            color: "#D97041"
        },
        {
            value : Math.random(),
            color: "#C7604C"
        },
        {
            value : Math.random(),
            color: "#21323D"
        },
        {
            value : Math.random(),
            color: "#9D9B7F"
        },
        {
            value : Math.random(),
            color: "#7D4F6D"
        },
        {
            value : Math.random(),
            color: "#584A5E"
        }
    ];
    var radarChartData = {
        labels : ["","","","","","",""],
        datasets : [
            {
                fillColor : "rgba(220,220,220,0.5)",
                strokeColor : "rgba(220,220,220,1)",
                pointColor : "rgba(220,220,220,1)",
                pointStrokeColor : "#fff",
                data : [65,59,90,81,56,55,40]
            },
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,1)",
                pointColor : "rgba(151,187,205,1)",
                pointStrokeColor : "#fff",
                data : [28,48,40,19,96,27,100]
            }
        ]

    };
    new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData);
    new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
    new Chart(document.getElementById("radar").getContext("2d")).Radar(radarChartData);
    new Chart(document.getElementById("polarArea").getContext("2d")).PolarArea(chartData);
    new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
    new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);


});