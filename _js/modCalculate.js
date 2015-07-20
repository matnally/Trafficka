
//**********************************
// START OF EVENTS
//**********************************
function calEventMoneyStart() {
	
	var strEvent="";
	
	try {

		XMLreadFile("_xml/events.xml");
		
		// Randomise a number using no of event children
		intRandomEvent = Math.floor((Math.random() * parseInt(XMLreturnNoOfChilden("event"))) + 1);
		strEvent = XMLfindChildNodebyAttribute(intRandomEvent, "id", "description");

strGlobalUserDescription += "<br>End of Turn " + (parseInt(strTurn)-1) + " summary<br>";
strGlobalUserDescription += "You traveled to " + strUserCurrentLocationName + "<br>";
strGlobalUserDescription += XMLfindChildNodebyAttribute(intRandomEvent, "id", "name");
//updateUserDescription();

	} catch(err) { //Catches the error that occurred. Probably a malformed XML file.
		alert("An error has occurred in modCalculate file, calEventMoney function. \n\nThe specific error message was - " + err);
	}
	
	return strEvent;
	
}
function calEventMoneyMoney() {	
	
	//Give money away!
	strUserCurrentBalance = parseInt(strUserCurrentBalance) - parseInt(XMLfindChildNodebyAttribute(intRandomEvent, "id", "money"));
	document.getElementById("strUserCurrentBalance").innerHTML = strUserCurrentBalance;

	var strEvent="";
		strEvent += "You <span class='intVariables'>Pussy</span>. You gave <span class='intVariables'>" + XMLfindChildNodebyAttribute(intRandomEvent, "id", "name") + "</span> £<span class='intVariables'>" + XMLfindChildNodebyAttribute(intRandomEvent, "id", "money")+"</span>";
	
strGlobalUserDescription += " got given £" + XMLfindChildNodebyAttribute(intRandomEvent, "id", "money") + " by you.";
updateUserDescription();
	
	return strEvent;

}
function calEventMoneyFight() {

	// TAKE HEALTH AWAY
	var intHealthToTake=25;
	strUserHealth = parseInt(strUserHealth) - intHealthToTake;
	document.getElementById("strUserHealth").innerHTML = strUserHealth;
//	checkHealth();
calCheckHealthImage();
	
	var strEvent="";
		strEvent += "You fight <span class='intVariables'>" + XMLfindChildNodebyAttribute(intRandomEvent, "id", "name") + "</span>. You are wounded by <span class='intVariables'>" + intHealthToTake +"</span> health.<br><br>Your new health is <span class='intVariables'>" + strUserHealth + "</span>%.";

strGlobalUserDescription += " fight took " + intHealthToTake + " health.";
updateUserDescription();

	return strEvent;
	
}
function calEventMoneyRun() {
	
	// TAKE HEALTH AWAY
	var intHealthToTake=10;
	strUserHealth = parseInt(strUserHealth) - intHealthToTake;
	document.getElementById("strUserHealth").innerHTML = strUserHealth;
//	checkHealth();
calCheckHealthImage();

	strUserCurrentBalance = parseInt(strUserCurrentBalance) - (parseInt(XMLfindChildNodebyAttribute(intRandomEvent, "id", "money"))/2);
	document.getElementById("strUserCurrentBalance").innerHTML = strUserCurrentBalance;

	var strEvent="";
		strEvent += "You run away like a <span class='intVariables'>Coward</span>!<br><br>" +
		"However, <span class='intVariables'>" + XMLfindChildNodebyAttribute(intRandomEvent, "id", "name") + "</span> managed to wound you by <span class='intVariables'>" + intHealthToTake +"</span> health."+
		"<br><br>Your new health is now <span class='intVariables'>" + strUserHealth + "</span>%."+
		"<br><br>They also managed to steal £<span class='intVariables'>" + (parseInt(XMLfindChildNodebyAttribute(intRandomEvent, "id", "money"))/2) + "</span>.";

strGlobalUserDescription += " ran after you and took " + intHealthToTake + " health and £" + (parseInt(XMLfindChildNodebyAttribute(intRandomEvent, "id", "money"))/2);
updateUserDescription();

	return strEvent;

}
//**********************************
// END OF EVENTS
//**********************************

//**********************************
// START OF MONEY
//**********************************
function hasEnoughMoney(intMoneyCurrent, intMoneyToSpend) {

	var intBalance = 0;

	//Perform the transaction
	intBalance = intMoneyCurrent - intMoneyToSpend;

	if (intBalance < 0) {
		//Not enough money
		return false;
	} else {
		//Enough money
		return true;
	}

}

function calWeightTrends(i, intNewCalPrice) {

	var strHistory="";
		strHistory= $("#rowID"+i+" #history"+i).text() + "," + intNewCalPrice;
		strHistory = strHistory.split(',');

	// Get all previous pricess	
	var intCount=0;
		intCount=strHistory.length;
	var intCurrentPrice=0;
		intCurrentPrice = intNewCalPrice;
	var intPreviousPrice=0;
		intPreviousPrice = parseInt(strHistory[intCount-2]); //Gets penultimate entry in history - previous price
	var intPreviousPreviousPrice=0; 
		intPreviousPreviousPrice = parseInt(strHistory[intCount-3]); //Gets penultimate entry in history - previous price
	var intPreviousPreviousPreviousPrice=0; 
		intPreviousPreviousPreviousPrice = parseInt(strHistory[intCount-4]); //Gets penultimate entry in history - previous price
	var intPreviousPreviousPreviousPreviousPrice=0; 
		intPreviousPreviousPreviousPreviousPrice = parseInt(strHistory[intCount-5]); //Gets penultimate entry in history - previous price

	$("#rowID"+i+" #current"+i).removeClass("PriceUpTrend");
	$("#rowID"+i+" #current"+i).removeClass("PriceDownTrend");
	
	if ( (intCurrentPrice > intPreviousPrice) && (intPreviousPrice > intPreviousPreviousPrice) && (intPreviousPreviousPrice > intPreviousPreviousPreviousPrice) && (intPreviousPreviousPreviousPrice > intPreviousPreviousPreviousPreviousPrice)) {
	//	alert("5 in a row HIGHER");
	
		// INCREASE THE HIGH NO 
		$("#rowID"+i+" #high"+i).text(parseInt($("#rowID"+i+" #high"+i).text()) + 50);
		$("#rowID"+i+" #current"+i).text(1);

		$("#rowID"+i+" #current"+i).addClass("PriceUpTrend");		

strGlobalUserDescription += "<br>" + $("#rowID"+i+" #name"+i).text() + " price has CRASHED!!!.";
updateUserDescription();
				 
//		document.getElementById("elemUpdates").innerHTML += "<p>" + $("#rowID"+i+" #name"+i).text() + " HIGH Price has increased by 50.</p>";
	}
	if ( (intCurrentPrice < intPreviousPrice) && (intPreviousPrice < intPreviousPreviousPrice) && (intPreviousPreviousPrice < intPreviousPreviousPreviousPrice) && (intPreviousPreviousPreviousPrice < intPreviousPreviousPreviousPreviousPrice)) {
	//	alert("5 in a row LOWER");
	
		// INCREASE THE HIGH NO
		$("#rowID"+i+" #high"+i).text(parseInt($("#rowID"+i+" #high"+i).text()) - 50);
		$("#rowID"+i+" #current"+i).text(parseInt($("#rowID"+i+" #high"+i).text()) + 100);
		
		$("#rowID"+i+" #current"+i).addClass("PriceDownTrend");				

strGlobalUserDescription += "<br>" + $("#rowID"+i+" #name"+i).text() + " price has ROCKETED.";
updateUserDescription();

//		document.getElementById("elemUpdates").innerHTML += "<p>" + $("#rowID"+i+" #name"+i).text() + " DOWN Price has decreased by 50.</p>";
	}

	//return intNewCalPrice;
	
} // FUNCTION
//**********************************
// END OF MONEY
//**********************************




//**********************************
// START OF CHECKS FOR ENOUGH MONEY AND STOCK
//**********************************
function calEnoughMoney(intTotal) {
	
	// intTotal is NEW total from buy
	if (intTotal < 0)
		return false;
	else
		return true;
	
}

function calEnoughStock(intStock) {
	
	if (intStock < 0)
		return false;
	else
		return true;
	
}


function displayNoMoneyOrStock() {

    $(function() {
        $("#divNoMoneyOrStock").dialog({
            modal: true,
            height: 500,
            width: 400,
            title: "No Money or Stock",
            closeOnEscape: true,
            show: { effect: "clip", duration: 500 },
            open: function() {

                var msg = "<h2>No Money or Stock</h2>";
                    msg += "<br>";
                    msg += "<p>You have no <span class='calVariables'>Money</span> or <span class='calVariables'>Stock</span></p>";
                    msg += "<br>";
                    msg += "<h3>Your balance is <span class='calVariables'>£" + strUserCurrentBalance + "</span></h3>";
                $("#divNoMoneyOrStock").html(msg);
            },      

            buttons: [
                {text: "OK",
                icons: { primary: "ui-icon-pencil" },
                click: function() {
                    $("#divNoMoneyOrStock").dialog('close');
                }} //click: function() {
            ] // buttons    
        }); //$( "#infobox" ).dialog({
    }); //$(function() 
    
}


//**********************************
// END OF CHECKS FOR ENOUGH MONEY AND STOCK
//**********************************


//**********************************
// START OF GRID
//**********************************
function sortTable(strCellNoToSort, strElement) {
	
            // 9 = current
            // 5 = stock
	if (strElement==0)
		strElement="elemGrid";
	else
		strElement="elemCart";

    if (tinysort.defaults.order == "asc") {
                tinysort.defaults.order = "desc";
    } else {
                tinysort.defaults.order = "asc";
    }

    tinysort('div#'+strElement+'>.datRow:not(.theHeader)','.datCell:nth-child('+strCellNoToSort+')');
//            tinysort('div#elemGrid>.datRow:not(.theHeader)','.datCell:nth-child(9)');

}
//**********************************
// END OF GRID
//**********************************



