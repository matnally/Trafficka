
function createChart(thevalues) {

//thevalues = thevalues.split(',').map(Number).toString;

//alert(thevalues=thevalues.split(',').length);
 var thevalues2 = thevalues.split(',').map(Number);
//alert(thevalues.split(',').map(Number));
//alert(thevalues2.length)
//document.getElementById("chart").innerHTML = "";



	$("#chart").chart('clear'); //IMPORTANT in order to not chache sorta

	// let's loop to build tooltips and x labels.
	var thetooltips = new Array(thevalues2.length);
	var thelabels = new Array(thevalues2.length);

	for (var i = 0; i < thevalues2.length; i++) {
		thetooltips[i] = "<div class='label'><p class='charlab'>Price " + thevalues2[i] + "</p><p class='date'>Turn " + (i + 1) + "</p></div>";
		thelabels[i] = i + 1;
		//alert(thevalues2[i]);
	}

	// build the chart
	$("#chart").chart({
		template: "raphael_analytics",
		tooltips: thetooltips,
		values: {
			serie1: thevalues2
		},
		labels: thevalues2,
		legend : {
			//serie1 : "Price"
			//,serie2 : "Average Price"
		},
	});

	//Less than 2 character so therefopre has to be forst go!!!!
	if (thevalues.length<=3) {
		document.getElementById("chart").innerHTML = "<p class='cost'>First go so not historical data.</p>";
	}

} // END function
	



// this is a reausable template definition. scroll down for the real chart call.
$.elycharts.templates['raphael_analytics'] = {
	type: "line",
	style: {
		"background-color": "black"
	}, // END style
		margins: [10, 15, 25, 13], //margins: [0, 0, 0, 0],
	defaultSeries: {
		rounded: 0.6,
		fill: true,
		plotProps: {
			"stroke-width": 4
		}, // END plotProps
		dot: true,
		dotProps: {
			stroke: "#5AF",
			"stroke-width": 2,
			fill: "black"
		}, // END dotProps
		startAnimation: { // use an animation to start plotting the chart
			active: true,
			type: "avg",
			// start from the average line.
			speed: 500,
			// animate in 1 second.
			easing: "bounce"
		}, // END Animation
		highlight: {
			scaleSpeed: 0,
			// do not animate the dot scaling. instant grow.
			scaleEasing: '',
			scale: 2 // enlarge the dot on hover
		}, // END highlight
		tooltip: {
			height: 35,
			width: 80,
			padding: [3, 3],
			offset: [-15, -10],
			frameProps: {
				opacity: 0.75,
				fill: "black",
				stroke: "#CCC"
			} // END frameProps
		} // END tooltip
	}, // END defaultSeries
	series: {
		serie1: {
			color: "#5AF"
//			,visible: false
		},
		serie2: {
			color: "#FFF"
	//		,visible: false
		}
	}, // END series
	defaultAxis: {
		labels: true,
		labelsProps: {
			fill: "white",
			"font-size": "12px"
		}, // END labelsProps
		labelsDistance: 14
	}, // END defaultAxis
	axis: {
		l: { // left axis
			labels: false, // don't show labels for left axis
			labelsDistance: 10
		}
	}, // END axis
	features: {
		mousearea: {
			type: 'axis'
		}, // END mousearea
		tooltip: {
			positionHandler: function(env, tooltipConf, mouseAreaData, suggestedX, suggestedY) {
				return [mouseAreaData.event.pageX, mouseAreaData.event.pageY, true]
			} // END positionHandler
		}, // END tooltip
		grid: {
			draw: true,
			// draw both x and y grids
			forceBorder: true,
			// force grid for external border
			ny: 10,
			// use 10 divisions for y grid
			nx: 10,
			// 10 divisions for x grid
			props: {
				stroke: "#505040" // color for the grid
			} // END props
		} // END grid
	} // END features
}; // END $.elycharts.templates['raphael_analytics']
