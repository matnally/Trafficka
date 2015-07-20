

function endTurn() {

	if (boolFirstTurn) {
		
		// FIRST GO!

		//USER
		setUserGlobals(); //Load profile options
		refreshUserDetails(); //Updates HTML
		
		//LOCATION
		createLocations(); //Creates HTML of all potential locations
	
		//PRODUCTS & SHOPPING CART
		createLists();

		//PRODUCTS
		calNewProductPrices();
		//calProductHistory();

        // SETS THE CURRENCY £ $ 
        calSetCurrency();
		
        calCheckTurnStatus(boolFirstTurn); // Will be TRUE      
		boolFirstTurn = false;
		
	} else {
	
		if (checkBeforeTravel()) { // CHECK ENOUGH MONEY
				
			refreshUserDetails(); //Updates HTML
			
			//LOCATION
			createLocations(); //Creates HTML of all potential locations
			
			//PRODUCTS
			calNewProductPrices();
			//calProductHistory();
		
			document.getElementById("divProduct").className = "dontwannasee";
			document.getElementById("divMoneySpent").className = "dontwannasee";
			document.getElementById("divDestination").className = "dontwannasee";
			document.getElementById("strTravelDistance").innerHTML = "0";
			document.getElementById("strTravelCost").innerHTML = "0";
		
//*****************************************			
displayEndTurnSummary();
//*****************************************         

			calCheckTurnStatus(boolFirstTurn);		
			
		} // if (checkBeforeTravel()) {
	
	} // END IF
	
} // FUNCTION

function calSetCurrency() { // SETS THE CURRENCY
	
	var strCurrency = "£";
	
	var x = document.getElementsByName("strCurrency");
	var i;
	for (i = 0; i < x.length; i++) {
		x[i].innerHTML = strCurrency;
	}
	
}

function calCheckTurnStatus(boolFirstTime) {

	if (boolFirstTime) {
		//First go
		strTurn = 1;		
		strTurnLimit = 15;
		document.getElementById("strTurn").innerHTML = strTurn;
		document.getElementById("strTurnLimit").innerHTML = strTurnLimit;
	} else {
		
		if (strTurn == strTurnLimit) {
			alert("End of the game!");			
		} else {
			strTurn = strTurn + 1;		
			document.getElementById("strTurn").innerHTML = strTurn;
		}
		
	}
	
}


function calProductHistory() {

	// Puts the CURRENT ROW PRICE on to history

	var x = document.getElementsByName("datRow");
	var i=0;
	for (i = 0; i < x.length; i++) {

		// SO NOT TO PUT A 0 AT START - FOR CHART REALLY
		if ($("#rowID"+i+" #history"+i).text() == "0")
			$("#rowID"+i+" #history"+i).text($("#rowID"+i+" #current"+i).text());
		else
			$("#rowID"+i+" #history"+i).text($("#rowID"+i+" #history"+i).text()+","+$("#rowID"+i+" #current"+i).text());
		
	}

}


function calNewProductPrices() {

	var intNewPrice=0;
	var intCurrentPrice=0;
	var intHighPrice=0;
	var intAveragePrice=0;
	var intLowPrice=0;
	var strHistoryAverage="";
	
	var x = document.getElementsByName("datRow");
	var i=0; //????
	for (i = 0; i < x.length; i++) {

		intCurrentPrice = parseInt($("#rowID"+i+" #current"+i).text());

		//If first go?
		if (parseInt(intCurrentPrice)==0) {
			
			// FIRST GO INITILISATION PRICES
			intNewPrice = Math.floor((Math.random() * 150) + 50);
			intHighPrice = intNewPrice; // Fist go so SET	
			intLowPrice = intNewPrice; // Fist go so SET
			intAveragePrice =intNewPrice;
			$("#rowID"+i+" #high"+i).text(intNewPrice);
			$("#rowID"+i+" #low"+i).text(intNewPrice);
			$("#rowID"+i+" #average"+i).text(intNewPrice);
			$("#rowID"+i+" #history"+i).text(intNewPrice);
			$("#rowID"+i+" #stock"+i).text(100);
				
		} else {
		    
			// GET THE VALUES TO WORK OUT
			intHighPrice = parseInt($("#rowID"+i+" #high"+i).text());
			intLowPrice = parseInt($("#rowID"+i+" #low"+i).text());
			intAveragePrice = parseInt($("#rowID"+i+" #average"+i).text());

    		// NEW PRICE
    		intNewPrice = Math.floor((Math.random() * intHighPrice) + intLowPrice);		
            // ANY TRENDS TO ADD / DELETE
            calWeightTrends(i, intNewPrice);
            
            if (intNewPrice < 1) {
            	alert("intNewPrice is 0? : " + intNewPrice);
            	intNewPrice=1;
            }
					
			$("#rowID"+i+" #history"+i).text($("#rowID"+i+" #history"+i).text() + "," + intNewPrice);

			// UPDATE HIGH OR LOW IF MORE OR LESS THAN
			if (intNewPrice > intHighPrice)
				$("#rowID"+i+" #high"+i).text(intNewPrice);
			
			if (intNewPrice < intLowPrice)
				$("#rowID"+i+" #low"+i).text(intNewPrice);
				
			// WORK OUT AVERAGE
			strHistoryAverage = $("#rowID"+i+" #history"+i).text();
			strHistoryAverage = strHistoryAverage.split(',');
			intAveragePrice=0;
			for (ii=0;ii<strHistoryAverage.length;ii++) {
				intAveragePrice = intAveragePrice + parseInt(strHistoryAverage[ii]);
			}
			intAveragePrice = Math.round(intAveragePrice / (parseInt(strHistoryAverage.length)));
			$("#rowID"+i+" #average"+i).text(intAveragePrice);
            $("#rowID"+i+" #current"+i).removeClass("PriceUp");	
            $("#rowID"+i+" #current"+i).removeClass("PriceDown");	
            $("#rowID"+i+" #current"+i).removeClass("PriceSame");	

    		// DO THIS B4 ASSIGN intNewPrice
    		//change colors
    		switch (true) {
    		    case (intNewPrice == 0):
    				$("#rowID"+i+" #current"+i).addClass("PriceSame");	
    		        break;
    		    case (intNewPrice > parseInt($("#rowID"+i+" #current"+i).text())):
    				$("#rowID"+i+" #current"+i).addClass("PriceUp");	
    		        break;
    		    case (intNewPrice < parseInt($("#rowID"+i+" #current"+i).text())):
    				$("#rowID"+i+" #current"+i).addClass("PriceDown");	
    		        break;
    		    default:
    				$("#rowID"+i+" #current"+i).addClass("PriceSame");	
    		} //switch 

		
		} //if (parseInt(intCurrentPrice)==0) {

		$("#rowID"+i+" #current"+i).text(intNewPrice);		
		
    } // FOR LOOP for (i = 0; i < x.length; i++) {

} // function


function calTravelCost(intTravelDistance) {

// ON THE BASIS THAT IT COSTS £4 FOR EVERY MILE 
intTravelDistance = (intTravelDistance / 4).toFixed(0);

/*	
	switch (true) {
	    case (intTravelDistance > 1000):
	        break;
	    case (intTravelDistance > 100):
	        break;
	    case (intTravelDistance > 10):
	        break;
	    case (intTravelDistance > 0):
	        break;
	    case (intTravelDistance < 0):
	        break;
	    default:
	} 
*/

	return intTravelDistance;
	
}



function checkBeforeTravel() {

	//Check and return boolean for balance 
	if (parseInt(strUserCurrentBalance) - parseInt(strTravelCost) < 0) {
        // NOT ENOUGH MONEY
        displayNoMoneyOrStock();
		return false;
	} else {
		return true;
	}
	
}



function calculateTravel2(intCurrent, intDestination) {
	
	var intTotal=0;
	var strCost="";

	intTotal = Math.abs(parseInt(intCurrent) - parseInt(intDestination)); // Turn in to a positive number not matter what]

/*
	switch (intTotal) {
	    case 0:
	        strCost="Same Destination!";
	        break;
	    case 1:
	        strCost="Low 1";
	        break;
	    case 2:
	        strCost="Low 2";
	        break;
	    case 3:
	        strCost="Low 3";
	        break;
	    case 4:
	        strCost="Low 4";
	        break;
	    case 5:
	        strCost="Medium";
	        break;
	    case 6:
	        strCost="Expensive 1";
	        break;
	    case 7:
	        strCost="Expensive 2";
	        break;
	    case 8:
	        strCost="Expensive 3";
	        break;
	    case 9:
	        strCost="Expensive 4";
	        break;
	    case 10:
	        strCost="Expensive 5";
	        break;
	    default:
	        strCost="Dunno";
	} 	
*/

	return intTotal;

}




//Checks to see if product is in current travelzone
function getTravelZones(strTravelZones) {

	var arrTravelZones = strTravelZones.split(',');

	var boolFound = false;
	
	for (i=0; i < arrTravelZones.length; i++) {

		if (arrTravelZones[i] == strUserCurrentTravelZone) {
			boolFound = true;			
			//alert("Found in Travelzone");			
		}
	
	}
				
	return boolFound;

}






// calculates the distance between two points (latitude/longitude of those points)
function distance(lat1, lon1, lat2, lon2, unit) {

	// Unit: 'M' is statute miles (default), 'K' is kilometers, 'N' is nautical miles    

	var radlat1 = Math.PI * lat1/180;
	var radlat2 = Math.PI * lat2/180;
	var radlon1 = Math.PI * lon1/180;
	var radlon2 = Math.PI * lon2/180;
	var theta = lon1-lon2;
	var radtheta = Math.PI * theta/180;
	var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);

	dist = Math.acos(dist);
	dist = dist * 180/Math.PI;
	dist = dist * 60 * 1.1515;

	if (unit=="K") { dist = dist * 1.609344; }
	if (unit=="N") { dist = dist * 0.8684; }

	return dist;

}

//Sets an HTML object's disabled property TRAVELBUTTON
function changeDisabledStatus(elemObject, boolStatus) {

	document.getElementById(elemObject.id).disabled = boolStatus;
	
}
