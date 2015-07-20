
function setUserGlobals() {

	try {

		//User Details
		XMLreadFile("_xml/user.xml");		
		strUserName = XMLfindChildNode(0, "name");
		strUserImage = XMLfindChildNode(0, "image");
		strUserDescription = XMLfindChildNode(0, "description");
		strUserType = XMLfindChildNode(0, "type");
		strUserHealth = XMLfindChildNode(0, "health");
		strUserCapacity = XMLfindChildNode(0, "capacity");
		strUserCurrentBalance = XMLfindChildNode(0, "money");
		strUserCurrentDistanceTraveled = XMLfindChildNode(0, "distancetraveled"); //To do with LOCATION
		strUserCurrentLocationID = XMLfindChildNode(0, "location"); //Have to read from user.xml

		//User Details
		document.getElementById("strUserName").innerHTML = strUserName;
		document.getElementById("strUserImage").src = strUserImage;
		document.getElementById("strUserDescription").innerHTML = strUserDescription;
		document.getElementById("strUserHealth").innerHTML = strUserHealth;
		document.getElementById("strUserCurrentBalance").innerHTML = strUserCurrentBalance;
		document.getElementById("strUserCurrentDistanceTraveled").innerHTML = strUserCurrentDistanceTraveled;

	} catch(err) { //Catches the error that occurred. Probably a malformed XML file.
		alert("An error has occurred in modUser file, setUserGlobals function. \n\nThe specific error message was - " + err);
	}
	
}

function refreshUserDetails() {

	if (strLocationID!="Nothing") {
		//NOT FIRST GO
		strUserCurrentLocationID = strLocationID;
		strTravelDistance = parseInt(distance(parseFloat(strUserCurrentLocationLatitude), parseFloat(strUserCurrentLocationLongitude), parseFloat(strLocationLatitude), parseFloat(strLocationLongitude), "M"));
		strTravelCost = calTravelCost(strTravelDistance);
		strUserCurrentBalance = strUserCurrentBalance - strTravelCost;
		document.getElementById("strUserCurrentBalance").innerHTML = strUserCurrentBalance;
	}
	
	XMLreadFile("_xml/locations.xml");
	strUserCurrentLocationName = XMLfindChildNodebyAttribute(strUserCurrentLocationID, "id", "name");
	strUserCurrentLocationImage = XMLfindChildNodebyAttribute(strUserCurrentLocationID, "id", "image");
	strUserCurrentLocationDescription = XMLfindChildNodebyAttribute(strUserCurrentLocationID, "id", "description");
	strUserCurrentLocationLongitude = XMLfindChildNodebyAttribute(strUserCurrentLocationID, "id", "longitude");
	strUserCurrentLocationLatitude = XMLfindChildNodebyAttribute(strUserCurrentLocationID, "id", "latitude");
	strUserCurrentTravelZone = XMLfindChildNodebyAttribute(strUserCurrentLocationID, "id", "travelzone");

	//User Location Details
	document.getElementById("strUserCurrentLocationName").innerHTML = strUserCurrentLocationName;
	document.getElementById("strUserCurrentLocationImage").src = strUserCurrentLocationImage;
	document.getElementById("strUserCurrentLocationDescription").innerHTML = strUserCurrentLocationDescription;
 	document.getElementById("strTravelCost").innerHTML = strTravelCost;
	document.getElementById("strTravelDistance").innerHTML = strTravelDistance;
    	strUserCurrentDistanceTraveled = parseInt(strUserCurrentDistanceTraveled) + parseInt(strTravelDistance); //To do with LOCATION
	document.getElementById("strUserCurrentDistanceTraveled").innerHTML = (strUserCurrentDistanceTraveled / 1000).toFixed(1);
	document.getElementById("strUserCurrentDistanceTraveled").setAttribute("title","You have travelled "+strUserCurrentDistanceTraveled+" miles in total");

    calCheckHealthImage();
    updateUserDescription();    
	
}

function calCheckHealthImage() {

if (strUserHealth < 1) {
	alert("You dead!");
}
	
	var strURL="";

	switch (true) {
	    case (strUserHealth <= 25):
	    	strURL="_img/user/doom_face-1-4.png";
	        break;
	    case (strUserHealth <= 50):
	    	strURL="_img/user/doom_face-1-3.png";
	        break;
	    case (strUserHealth <= 75):
	    	strURL="_img/user/doom_face-1-2.png";
	        break;
	    default:
	    	strURL="_img/user/doom_face-1-1.png";
	} //switch 

	document.getElementById("strUserHealthImage").src = strURL;
	
}


function displayEndTurnSummary() {

	$(function() {
		$("#divEndTurn").dialog({
			modal: true,
			height: 500,
			width: 400,
			title: "End of Turn Summary",
			closeOnEscape: true,
 			show: { effect: "clip", duration: 500 },
			open: function() {

				var msg = "<h2>End of Turn</h2>";
					msg += "<h3>Summary</h3>";
					msg += "<span class='calVariables'>£" + (parseInt(strUserCurrentBalance) + parseInt(intProductsGrandTotal)) + "</span> previous Balance";
					msg += "<br>";
					msg += "<span class='calVariables'>£" + intProductsGrandTotal + "</span> money spent on Products";
					msg += "<br>";
					msg += "<span class='calVariables'>£" + strUserCurrentBalance + "</span> Balance after Product spend";
					msg += "<br>";
					msg += "<span class='calVariables'>£" + strTravelCost + "</span> Travel Cost";
					msg += "<h3>New Balance <span class='calVariables'>£" + (parseInt(strUserCurrentBalance) - parseInt(strTravelCost)) + "</span></h3>";
				$("#divEndTurn").html(msg);
			},		

			buttons: [
				{text: "OK",
				icons: { primary: "ui-icon-pencil" },
				click: function() {
					$("#divEndTurn").dialog('close');
					triggerEvent();
				}} //click: function() {
			] // buttons	
		}); //$( "#infobox" ).dialog({
	}); //$(function() } // FUNCTION


function triggerEvent() {
/*	
	GET MONEY
	GET PRODUCTS IN CART
	document.getElementById("strUserHealth").innerHTML = strUserHealth;
*/

	triggerEventMoney();

}
function triggerEventMoney() {

	var intMoney=1;
		intMoney = Math.round(Math.floor((Math.random() * (1 + strUserCurrentBalance - intMoney)) + intMoney) / 2);

	$(function() {
		$("#divEventMoney").dialog({
			modal: true,
			height: 400,
			width: 400,
			title: "Random Event",
			closeOnEscape: false,
 			show: { effect: "bounce", duration: 1000 },
			open: function() {



//				var msg = "While traveling a pick pocket tries to steal <span class='cost'>" + intMoney + "</span> from you.";
				var msg = "";
				
msg = calEventMoneyStart();					
					
				$("#divEventMoney").html(msg);
								
			},		

			buttons: [
				{text: "Give money",
				icons: { primary: "ui-icon-pencil" },
				click: function() {

					var msg = "";
			
msg = calEventMoneyMoney();					
					
					$("#divEventMoney").html(msg);
					
					//BUTTONS
					$("#divEventMoney").dialog(
						'option', 'buttons',[{
												text: 'Finish',
												icons: { primary: "ui-icon-circle-check" },		
												click: function() {
													$("#divEventMoney").dialog('close');
												}
											}]
					);

				}}
				,{text: "Fight",
				icons: { primary: "ui-icon-alert" },
				click: function() {

					var msg = "";

msg = calEventMoneyFight();					
						
					$("#divEventMoney").html(msg);
					
					//BUTTONS
					$("#divEventMoney").dialog(
						'option', 'buttons',[{
												text: 'Finish',
												icons: { primary: "ui-icon-circle-check" },								
												click: function() {
													$("#divEventMoney").dialog('close');
												}
											}]
					);
	
				}} //click: function() {
				,{text: "Run",
				icons: { primary: "ui-icon-flag" },
				click: function() {

					var msg = "";

msg = calEventMoneyRun();					
 
					$("#divEventMoney").html(msg);

					//BUTTONS
					$("#divEventMoney").dialog(
						'option', 'buttons',[{
												text: 'Finish',
												icons: { primary: "ui-icon-circle-check" },								
												click: function() {
													$("#divEventMoney").dialog('close');
												}
											}]
					);


				}} //click: function() {
			] // buttons	
		}); //$( "#infobox" ).dialog({
	}); //$(function() {

} // FUNCTINON




function updateUserDescription() {

// UPDAETS PANEL
document.getElementById("elemUpdates").innerHTML = strGlobalUserDescription;

	// UPDATE USER'S DESCRIPTION
	switch (true) {
	    case (strTurn == 1):
            strUserDescription = "Turn " + strTurn + " : "; 
		break;
	    case (strTurn == 2):
            strUserDescription = "Turn " + strTurn + " : "; 
		break;
	    case (strTurn == 3):
		    strUserDescription = "Turn " + strTurn + ": ";
		break;
	    case (strTurn == 4):
		    strUserDescription = "Turn " + strTurn + ": ";
		break;
	    case (strTurn == 5):
		    strUserDescription = "Turn " + strTurn + ": ";
		break;
	    case (strTurn > 5):
		    strUserDescription = "Turn " + strTurn + ": ";
		break;
		default:
		    strUserDescription = "Turn " + strTurn + " ";
	} 

    strUserDescription += "<br>";
    strUserDescription += "You spent (Global) £" + intProductsGrandTotal + "";
//    strUserDescription += "<br>";
//    strUserDescription += "You made £" + intGlobalProfit + " profit";

//document.getElementById("elemUpdates").innerHTML += "<br>" + strUserDescription;
	document.getElementById("strUserDescription").innerHTML = strUserDescription;
			
}

