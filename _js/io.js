
//Reads an XML file using the passed in filename
function XMLreadFile(strXMLfileName) {	

	try { //Opening and reading XML files are always difficult so perform a try catch
	
		var xmlDoc;
		
		// Load XML from a file on the web server
		if (window.ActiveXObject) {
			//IE
			var xmlDocIE = new ActiveXObject("Microsoft.XMLDOM");
			xmlDocIE.async = false;
			xmlDocIE.load(strXMLfileName);
			xmlDoc = xmlDocIE;
		} else {
			//Other
			var xmlDocFF = new XMLHttpRequest();
			//xmlDocFF.open("GET", strXMLfileName, false);
			xmlDocFF.open("GET", strXMLfileName +"?q="+ Math.random(), false); //Include random number so that the XML is not cached
			xmlDocFF.send();

			xmlDoc = xmlDocFF.responseXML;
		}

		//Sets XML global
		globalXMLfile = xmlDoc.documentElement;

		var intTotalNodes = globalXMLfile.getElementsByTagName('*');

		//Sets XML globals
		globalStrParentNode = intTotalNodes[0].parentNode.tagName; //Parent node
		globalStrChildNode = intTotalNodes[1].parentNode.tagName; //Child node
		
	} catch(err) { //Catches the error that occurred. Probably a malformed XML file.
		alert("An error has occurred reading the XML file. Please check the validity of the '"+strXMLfileName+"' file. \n\nThe specific error message was - "+err);
	}
	
}
