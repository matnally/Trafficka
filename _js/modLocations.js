
function setLocationGlobals(theValue) {

	try {

		XMLreadFile("_xml/locations.xml");
		
		strLocationID = theValue;
		strLocationName = XMLfindChildNodebyAttribute(theValue, "id", "name");
		strLocationImage = XMLfindChildNodebyAttribute(theValue, "id", "image");
		strLocationDescription = XMLfindChildNodebyAttribute(theValue, "id", "description");
		strLocationLongitude = XMLfindChildNodebyAttribute(theValue, "id", "longitude");
		strLocationLatitude = XMLfindChildNodebyAttribute(theValue, "id", "latitude");
		strLocationTravelZone = XMLfindChildNodebyAttribute(theValue, "id", "travelzone");

	} catch(err) { //Catches the error that occurred. Probably a malformed XML file.
		alert("An error has occurred in modLocations file, setLocationGlobals function. \n\nThe specific error message was - " + err);
	}
	
}

function refreshDestinationDetails(theValue) {

	setLocationGlobals(theValue);
	
	document.getElementById("strLocationName").innerHTML = strLocationName;
	document.getElementById("strLocationImage").src = strLocationImage;
	document.getElementById("strLocationDescription").innerHTML = strLocationDescription;
	//Travel
	strTravelDistance = parseInt(distance(parseFloat(strUserCurrentLocationLatitude), parseFloat(strUserCurrentLocationLongitude), parseFloat(strLocationLatitude), parseFloat(strLocationLongitude), "M"));
	strTravelCost = calTravelCost(strTravelDistance);
	document.getElementById("strTravelDistance").innerHTML = strTravelDistance;
 	document.getElementById("strTravelCost").innerHTML = strTravelCost;

    //SHOW
	document.getElementById("divDestination").className = "";
	
}

//Reads in all locations from XML file and calls function to create SELECT dropdown menu of them
function createLocations() {

	try {
		
		XMLreadFile("_xml/locations.xml");
		
		elem = document.getElementById("elemLocationList");
		elem.innerHTML = createLocationsList(strUserCurrentLocationName);
		
	} catch(err) { //Catches the error that occurred. Probably a malformed XML file.
		alert("An error has occurred in modLocations file, createLocations function. \n\nThe specific error message was - " + err);
	}
	
}
//Creates SELECT dropdown menu of all locations in XML
function createLocationsList(strUserCurrentLocationName) {

	var intIndex=0; //To hold the index number
	var strHTMLTemp=""; //Holds the built up HTML code to display
	var strObjectName = "travelButton"; //STRANGE! Can't pass the object via getElementById because it has not been created yet, but passing this string works!

	strHTMLTemp+="<select id='" + globalStrChildNode + "' name='" + globalStrChildNode + "' onChange='changeDisabledStatus(" + strObjectName + ", false); refreshDestinationDetails(this.value);'>"; //OnChange, sets the button to true

	$(globalXMLfile).find("name").each(function (index) {

		if (strUserCurrentLocationName == $(this).text())
			intIndex = globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id"); //Make a note of the index it was found at. Have to plus 1 as the id ATTRIBUTE starts at 1, not 0.		

        strHTMLTemp += "<option value='" + globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id") + "'>" + $(this).text() + "</option>";
        
	});
	
	strHTMLTemp+="</select>";
	
	return strHTMLTemp;

}