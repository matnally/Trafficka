
function XMLfindIDAttributeByChildNodeValue(strChosenChildsNodeName, strChosenChildsNodeValue) {

	var strFoundChild; 
	var intFoundIndex; //Flag to determine if Node found

	//************ PRODUCTS ONLY NEED TO CHANGE TO PASSED VAR
	XMLreadFile("_xml/products.xml");

	$(globalXMLfile).find(globalStrChildNode).each(function (index) { //For loop to iterate through the CHILD nodes

		//Find by chosen Node name and corresponding Node value
		$(this).children().each(function () { //For loop to iterate through the CHILD nodes

			if ((strChosenChildsNodeName.toUpperCase() == $(this)[0].nodeName.toUpperCase()) && (strChosenChildsNodeValue.toUpperCase() == $(this).text().toUpperCase())) { //Match Node name and Node value of chosen
				//Found
				intFoundIndex = index; //Match flag to current Node Index value
			}
			
		});

		if (index == intFoundIndex) //If current Index is the chosen Index
			strFoundChild = ($(this).text()); //Full CHILD
					
	});
	
	return intFoundIndex;

}


function XMLfindChild(intChosenIndex, strChosenChildsNodeName, strChosenChildsNodeValue) {

	var strFoundChild; 
	var intFoundIndex; //Flag to determine if Node found

	$(globalXMLfile).find(globalStrChildNode).each(function (index) { //For loop to iterate through the CHILD nodes

		if (intChosenIndex != "") {
		//NOT empty
	
			//Find by chosen Index of Node
			if (intChosenIndex==index) {
				//Found
				intFoundIndex = index; //Match flag to current Node Index value
			}
			
			if (index == intFoundIndex) //If Found
				 strFoundChild = ($(this).text()); //Full CHILD
						
		} else {
		//Empty
	
			//Find by chosen Node name and corresponding Node value
			$(this).children().each(function () { //For loop to iterate through the CHILD nodes

				if ((strChosenChildsNodeName == $(this)[0].nodeName) && (strChosenChildsNodeValue == $(this).text())) { //Match Node name and Node value of chosen
					//Found
					intFoundIndex = index; //Match flag to current Node Index value
				}
				
			});

			if (index == intFoundIndex) //If current Index is the chosen Index
				strFoundChild = ($(this).text()); //Full CHILD
					
		}

	});
	
	return strFoundChild;

}

function XMLfindChildNode(intChosenIndex, strChosenChildsNodeName) {

	var intFoundIndex; //Flag to determine if Node found
	var strFound="";
	
	$(globalXMLfile).find(globalStrChildNode).each(function (index) { //For loop to iterate through the CHILD nodes
	
		//Find by chosen Index of Node
		if (intChosenIndex == index) //Found
			intFoundIndex = index; //Match flag to current Node Index value

		$(this).find(strChosenChildsNodeName).each(function () {
			if (index == intFoundIndex) //If current Index is the chosen Index
				strFound = $(this).text();
		});

	});

	return strFound;
}

function XMLfindChildNodes(intChosenIndex, strChosenChildsNodeName, strChosenChildsNodeValue) {

	var intFoundIndex; //Flag to determine if Node found

	$(globalXMLfile).find(globalStrChildNode).each(function (index) { //For loop to iterate through the CHILD nodes

		if (intChosenIndex != "") {
		//NOT empty
	
			//Find by chosen Index of Node
			if (intChosenIndex == index) //Found
				intFoundIndex = index; //Match flag to current Node Index value
						
		} else {
		//Empty
	
			//Find by chosen Node name and corresponding Node value
			$(this).children().each(function () { //For loop to iterate through the CHILD nodes

				if ((strChosenChildsNodeName == $(this)[0].nodeName) && (strChosenChildsNodeValue == $(this).text())) //Match Node name and Node value of chosen //Found
					intFoundIndex = index; //Match flag to current Node Index value

			});
					
		}

		//Find by chosen Node name and corresponding Node value
		$(this).children().each(function () { //For loop to iterate through the CHILD nodes

			if (index == intFoundIndex) //If current Index is the chosen Index
				alert($(this)[0].nodeName + " : " + $(this).text()); //Displays all Nodes of CHILD
			
		});

	});
	
}

//Finds a particular CHILD Node using ATTRIBUTE Name
function XMLfindChildNodebyAttribute(intID, strAttributeName, strChildNodeName) {

	var strReturn = "";
	
	try {

		//Reads in all the instances of the global child node name in the globalXMLfile
		var x = globalXMLfile.getElementsByTagName(globalStrChildNode);
		
		//Iterates through the returned child nodes and matches on an attribute
		for (i=0;i<x.length;i++) {
			if(x[i].getAttribute(strAttributeName) == intID) {
				strReturn = x[i].getElementsByTagName(strChildNodeName)[0].childNodes[0].nodeValue;
			}
		}

	} catch(err) {
		//Catches the error that occurred
		alert("An error has occurred finding the '" + globalStrChildNode + "' Child Node using '" + intID +"' against the '" + strAttributeName + "' Attribute Name. \n\nThe specific error message was - " + err);
	}
	
	return strReturn;
}

	
// RETURNS 
	
function XMLreturnNoOfChilden(strChildNode) {
	//Returns the number of CHILD nodes
	return globalXMLfile.getElementsByTagName(strChildNode).length;
}

function XMLreturnNoOfChildenNodes(strChildNode) {
	//Returns the number of nodes in a CHILD node
	if (window.ActiveXObject) {
		//IE
		return globalXMLfile.getElementsByTagName(strChildNode)[0].childNodes.length;
	} else {
		//Other
		return globalXMLfile.getElementsByTagName(strChildNode)[0].children.length;
	}
}


