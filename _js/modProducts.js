
function setProductGlobals(intIndex, strIdName) {
	
	strProductID = $("#"+strIdName+intIndex+" #id"+intIndex).text();
	strProductName = $("#"+strIdName+strProductID+" #name"+strProductID).text();
	strProductImage = $("#"+strIdName+strProductID+" #image"+strProductID).attr('src');
	strProductDescription = $("#"+strIdName+strProductID+" #description"+strProductID).text();
	strProductCurrentStock = $("#"+strIdName+strProductID+" #stock"+strProductID).text();
	strProductPriceHigh = $("#"+strIdName+strProductID+" #high"+strProductID).text();
	strProductPriceAverage = $("#"+strIdName+strProductID+" #average"+strProductID).text();
	strProductPriceLow = $("#"+strIdName+strProductID+" #low"+strProductID).text();
	strProductPriceCurrent = $("#"+strIdName+strProductID+" #current"+strProductID).text();
	strProductHistory = $("#"+strIdName+strProductID+" #history"+strProductID).text();
	strProductTravelZone = $("#"+strIdName+strProductID+" #travelzone"+strProductID).text();

// TO GET THE ROW HISTORY RATHER THAN THE CART HISTORY
strProductHistory = $("#rowID"+strProductID+" #history"+strProductID).text();
$("#cartRowID"+strProductID+" #history"+strProductID).text(strProductHistory);

}

function refreshProductDetails(intIndex, strIdName) {

	if (strIdName==0)
		strIdName="rowID";
	else
		strIdName="cartRowID";

    //removes chosen class
    var x = document.getElementsByName("datRow");
    var i=0;
    for (i = 0; i < x.length; i++) {
    		x[i].classList.remove("rowChosen");
    }
    
    if (document.getElementById("rowID"+intIndex))
    	document.getElementById("rowID"+intIndex).classList.add("rowChosen"); // add class to chosen one
    
    if (document.getElementById("cartRowID"+intIndex))
    	document.getElementById("cartRowID"+intIndex).classList.add("rowChosen"); // add class to chosen one
    
    
    	setProductGlobals(intIndex, strIdName); //Set the Globals first
    
    	document.getElementById("strProductName").innerHTML = strProductName;
    	document.getElementById("strProductImage").src = strProductImage;
    		document.getElementById("strProductImage").style.visibility = "visible"; //CSS
    	document.getElementById("strProductDescription").innerHTML = strProductDescription;
    	
    	document.getElementById("strProductPriceCurrent").innerHTML = strProductPriceCurrent;
    	document.getElementById("strProductCurrentStock").innerHTML = strProductCurrentStock;


// **********************	
//  START ENABLE / DISABLE BUTTONS
if (parseInt($("#cartRowID"+intIndex+" #stock"+intIndex).text()) > 9) {	
    $("#butSell10").removeAttr('disabled');
} else {
    $("#butSell10").attr('disabled','disabled');    
}
if (parseInt($("#rowID"+intIndex+" #stock"+intIndex).text()) > 9) {   
    $("#butBuy10").removeAttr('disabled');
//    document.getElementById("butBuy10");
} else {
    $("#butBuy10").attr('disabled','disabled');    
}
//  END ENABLE / DISABLE BUTTONS
// **********************   
    	

	//SHOW
	document.getElementById("divProduct").className = "";
	//document.getElementById("divShoppingCart").className = "";


var intCheckHistory;
intCheckHistory = strProductHistory.split(',');
if (!intCheckHistory[1]) // FIRST GO
	createChart(strProductPriceCurrent);
else {
	createChart(strProductHistory);
}	


    if (strIdName == "cartRowID") {
    
        document.getElementById("lblPrice").innerHTML = "Price bought for";
        document.getElementById("lblStock").innerHTML = "Stock in Inventory";
    
    	// CALCULATE PROFIT!!!!
    	var intCurPrice = parseInt($("#rowID"+strProductID+" #current"+strProductID).text());
    	var intBoughtPrice = parseInt($("#cartRowID"+strProductID+" #current"+strProductID).text());
    	var intProfit=0;
    		intProfit = parseFloat(intCurPrice - intBoughtPrice);
    
    	document.getElementById("strProductProfit").innerHTML = intProfit;
    
    } else { //if (strIdName == "cartRowID") {
    
    document.getElementById("lblPrice").innerHTML = "Price selling at";
    document.getElementById("lblStock").innerHTML = "Stock in Location";
    	
    } //if (strIdName == "cartRowID") {

	// CALCULATE PROFIT!!!!
	var intCurPrice = parseInt($("#rowID"+strProductID+" #current"+strProductID).text());
	var intBoughtPrice = parseInt($("#cartRowID"+strProductID+" #current"+strProductID).text());
	var intProfit=0;
		intProfit = parseFloat(intCurPrice - intBoughtPrice);
	if (intProfit) {
		document.getElementById("strProductProfit").innerHTML = intProfit;
		$("#divProfit").removeClass("PriceUp");	
		$("#divProfit").removeClass("PriceDown");	
		$("#divProfit").removeClass("PriceSame");

	 } else {//if (intProfit) {
		document.getElementById("strProductProfit").innerHTML = "";
		$("#divProfit").removeClass("PriceUp");	
		$("#divProfit").removeClass("PriceDown");	
		$("#divProfit").removeClass("PriceSame");	
	}//if (intProfit) {


}// END FUNCTION

function createLists() {

	elem = document.getElementById("elemGrid");
	elem.innerHTML = createList(0) + createProductList();
	
	elem = document.getElementById("elemCart");
	elem.innerHTML = createList(1);

}

function createList(elemID) {

	var strTemp = elemID;
	
	var strHTMLTemp=""; //Holds the built up HTML code to display

	strHTMLTemp+="<div class='datRowHeader'>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p>ID</p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p></p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell' onClick='sortTable(3,"+elemID+")'>"; //OnChange, sets the button to true
			strHTMLTemp+="<h3>Name</h3>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p>Description</p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell' onClick='sortTable(5,"+elemID+")'>"; //OnChange, sets the button to true
			strHTMLTemp+="<h3>Stock</h3>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p>High</p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p>Average</p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p>Low</p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell' onClick='sortTable(9,"+elemID+")'>"; //OnChange, sets the button to true
			strHTMLTemp+="<h3>Price (<span name='strCurrency'>&nbsp;</span>)</h3>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p>History</p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="<div class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+="<p>Travel Zone</p>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true
	strHTMLTemp+="</div>"; //OnChange, sets the button to true

	return strHTMLTemp;
}

//Creates SELECT dropdown menu of all products in XML
function createProductList() {
	
	var intIndex=0; //To hold the index number
	var strHTMLTemp=""; //Holds the built up HTML code to display

	XMLreadFile("_xml/products.xml");

	$(globalXMLfile).find("name").each(function (index) {

		strHTMLTemp+="<div name='datRow' id='rowID"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"' class='datRow' ondblclick='calBuySellProduct(0,1);' onClick='refreshProductDetails("+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+", 0);'>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='id"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"' class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+=globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+="<img id='image"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute('id')+"' src='"+XMLfindChildNode(index, "image")+"' alt='Product Image' />";
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='name"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell productName'>"; //OnChange, sets the button to true
			strHTMLTemp+=$(this).text();
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='description"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "description");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='stock"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "stock");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='high"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "high");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='average"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "average");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='low"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "low");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='current"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "current");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='history"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "history");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
			strHTMLTemp+="<div id='travelzone"+globalXMLfile.getElementsByTagName(globalStrChildNode)[index].getAttribute("id")+"'  class='datCell dontwannasee'>"; //OnChange, sets the button to true
			strHTMLTemp+=XMLfindChildNode(index, "travelzone");
			strHTMLTemp+="</div>"; //OnChange, sets the button to true
		strHTMLTemp+="</div>"; //OnChange, sets the button to true

	});

	return strHTMLTemp;

}

function calBuySellProduct(strIdName, intQuantity) {

	if (strIdName==0)
		strIdName="rowID";
	else
		strIdName="cartRowID";


	var intTotal = parseInt(strUserCurrentBalance);
	var intPrice = parseInt(strProductPriceCurrent);
	var intStock = parseInt(strProductCurrentStock);


    if (intQuantity == "MAX") {
        
        if (strIdName=="rowID") {
            intQuantity = (intTotal / intPrice).toFixed(0); // WORK OUT HOW MUCH CAN BUY
            intQuantity = intQuantity - 1; // MAYBE ABOUT ROUNDING DOWN ???
            
            // SO NO MATHS USING 0!
            if (intQuantity < 1)
                intQuantity = 1;
            
            
        } else {
            intQuantity = intStock;
        }            
        
            
    }    

    intPrice = parseInt(strProductPriceCurrent) * intQuantity;
	
	if (strIdName=="rowID") {
		//BUY
		
		// CAL COST
		intTotal = intTotal - intPrice;
		
		intStock = intStock - intQuantity;
		
		if ((calEnoughMoney(intTotal)) && (calEnoughStock(intStock))) { // IF ENOUGH MONEY AND STOCK
				
			strUserCurrentBalance = intTotal;
			document.getElementById("strUserCurrentBalance").innerHTML = strUserCurrentBalance;
			
			intProductsGrandTotal = intProductsGrandTotal + intPrice;
			document.getElementById("intProductsGrandTotal").innerHTML = intProductsGrandTotal;	
		
			strProductCurrentStock = intStock;
			document.getElementById("strProductCurrentStock").innerHTML = strProductCurrentStock;	
			//alert(document.getElementById("strProductCurrentStock").value);
			$("#rowID"+strProductID+" #stock"+strProductID).text(strProductCurrentStock);


// BOUGHT INFO
var strPurchased = strProductName + " bought!\n";
	strPurchased += "1 unit at £" + strProductPriceCurrent;
$.notify(
	strPurchased // BUILT UP HTML
	,{
		position:"bottom right"
		,className:"success"
		,autoHideDelay: 5000
	}
);


			// CHECK exists in cart
			if (!$("#cartRowID"+strProductID+" #stock"+strProductID).html()) {// exists in cart
				// NOT EXIST IN CART
			
				var	strHTMLtoCopyOver = document.getElementById("rowID" + strProductID).innerHTML; //Row to copy over
					strHTMLtoCopyOver="<div name='datRow' id='cartRowID"+strProductID+"' class='datRow' ondblclick='calBuySellProduct(1,1);' onClick='refreshProductDetails("+strProductID+", 1);'>"+strHTMLtoCopyOver+"</div>"; //OnChange, sets the button to true
				var elemCartHTML = document.getElementById("elemCart"); //Get element to copy to
					elemCartHTML.innerHTML += strHTMLtoCopyOver;			
			
				//First time so set to 1 STOCK		
				$("#cartRowID"+strProductID+" #stock"+strProductID).text(intQuantity);
				
				// REMOVES UP OR DOWN
				$("#cartRowID"+strProductID+" #current"+strProductID).removeClass("PriceUp");				
				$("#cartRowID"+strProductID+" #current"+strProductID).removeClass("PriceDown");				
				$("#cartRowID"+strProductID+" #current"+strProductID).removeClass("PriceSame");				
				
			} else {

				// IN CART ALREADY
				$("#cartRowID"+strProductID+" #stock"+strProductID).text(parseInt($("#cartRowID"+strProductID+" #stock"+strProductID).text()) + intQuantity);// = intNewStock;


// This changes the CART price to reflect different PRICE at different LOCATIONS
var intAvgSellPrice=0;
	intAvgSellPrice = parseInt($("#cartRowID"+strProductID+" #current"+strProductID).text()) + parseInt($("#rowID"+strProductID+" #current"+strProductID).text());				
	intAvgSellPrice =  Math.round(intAvgSellPrice / 2);
$("#cartRowID"+strProductID+" #current"+strProductID).text(intAvgSellPrice);// = intNewStock;

				
			}// exists in cart

			// CHECK if no more stock
			if (intStock==0) {
				//document.getElementById("rowID" + strProductID).innerHTML = ""; // DELETE row
				//document.getElementById("rowID" + strProductID).outerHTML = ""; // DELETE row
			}

			//SHOW
			document.getElementById("divMoneySpent").className = "";
		
		 } else {	

//NOT CART
displayNoMoneyOrStock();
//alert("NOT have enough Money or Stock");
	
		} // IF ENOUGH MONEY AND STOCK
		
		
	} else {
		//SELL
		
// NOT DOUBLE CLICK ?????
// NOT DOUBLE CLICK ?????
		
		//	SELL at CURRENT LOCATION price
		intTotal = intTotal + (parseInt($("#rowID"+strProductID+" #current"+strProductID).text()*intQuantity));	

//alert(intTotal);		
		intStock = intStock - intQuantity;
		if (calEnoughStock(intStock)) { // IF ENOUGH MONEY AND STOCK
		
			strUserCurrentBalance = intTotal;
			document.getElementById("strUserCurrentBalance").innerHTML = strUserCurrentBalance;
//alert(intQuantity);			
			intProductsGrandTotal = intProductsGrandTotal - (intPrice);
			document.getElementById("intProductsGrandTotal").innerHTML = intProductsGrandTotal;	
		
			strProductCurrentStock = intStock;
			document.getElementById("strProductCurrentStock").innerHTML = strProductCurrentStock;	
			//alert(document.getElementById("strProductCurrentStock").value);
			$("#cartRowID"+strProductID+" #stock"+strProductID).text(strProductCurrentStock);

			// CHECK exists in NORMAL
			if (!$("#rowID"+strProductID+" #stock"+strProductID).html()) {// exists in cart
				// NOT EXIST IN CART
			
				var	strHTMLtoCopyOver = document.getElementById("cartRowID" + strProductID).innerHTML; //Row to copy over
					strHTMLtoCopyOver="<div name='datRow' id='rowID"+strProductID+"' class='datRow' onClick='refreshProductDetails("+strProductID+", 0);'>"+strHTMLtoCopyOver+"</div>"; //OnChange, sets the button to true
				var elemHTML = document.getElementById("elemGrid"); //Get element to copy to
					elemHTML.innerHTML += strHTMLtoCopyOver;			
			
				//First time so set to 1 STOCK		
				$("#rowID"+strProductID+" #stock"+strProductID).text(intQuantity);
				
			} else {
				// IN CART ALREADY
				$("#rowID"+strProductID+" #stock"+strProductID).text(parseInt($("#rowID"+strProductID+" #stock"+strProductID).text()) + intQuantity);// = intNewStock;
				
			}// exists in cart


				// CALCULATE PROFIT!!!!
				var intCurPrice = parseInt($("#rowID"+strProductID+" #current"+strProductID).text());
				var intBoughtPrice = parseInt($("#cartRowID"+strProductID+" #current"+strProductID).text());
				var intProfit=0;
					intProfit = parseFloat(intCurPrice - intBoughtPrice);

// Gloabal Profit Made
intGlobalProfit = parseInt(intGlobalProfit) + parseInt(intProfit);

					
				var notyclassName="";					
				var strBuyMessage="";
				switch (true) {
				    case (intProfit == 0):
				        strBuyMessage = "You didn't lose or gain any money.";
				        notyclassName = "info";
				        break;
				    case (intProfit > 1000):
				        strBuyMessage = "Over £1000 profit! Well done! You made";
				        notyclassName = "success";
				        break;
				    case (intProfit > 100):
				        strBuyMessage = "Over £100 profit! Well done! You made";
				        notyclassName = "success";
				        break;
				    case (intProfit > 10):
				        strBuyMessage = "Over £10 profit! Well done! You made";
				        notyclassName = "success";
				        break;
				    case (intProfit > 0):
				        strBuyMessage = "Well done! You made";
				        notyclassName = "success";
				        break;
				    case (intProfit < 0):
				        strBuyMessage = "You sold at a loss of";
				        notyclassName = "error";
				        break;
				    default:
				        strBuyMessage = "DEFAULT!";
				        notyclassName = "success";
				} 


// SOLD INFO
var strSold = strProductName + " sold!\n";
	strSold += strBuyMessage + " £" + intProfit;
$.notify(
	strSold // BUILT UP HTML
	,{
		position:"bottom right"
		,className:notyclassName
		,autoHideDelay: 5000
	}
);


			//alert(strBuyMessage + " £" + intProfit);
		
		
			// CHECK if no more stock
			if (intStock==0) {
				document.getElementById("cartRowID" + strProductID).innerHTML = ""; // DELETE row
				document.getElementById("cartRowID" + strProductID).outerHTML = ""; // DELETE row
			}

			//SHOW
			document.getElementById("divMoneySpent").className = "";
		
		 } else {	

displayNoMoneyOrStock();
//alert("NOT have enough Stock");
	
		} // IF ENOUGH MONEY AND STOCK
		
		
	}//if (strOperator=="BUY") {

	// UPDATE GUI

	// stock
}

function resetProductDetails() {
	
	document.getElementById("divProduct").className = "dontwannasee";
//	document.getElementById("divShoppingCart").className = "dontwannasee";
	
}


