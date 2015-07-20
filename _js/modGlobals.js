
/***************************** START OF XML GLOBALS *********************************************************/

var globalXMLfile;
var globalStrParentNode;
var globalStrChildNode;

/***************************** END OF XML GLOBALS *********************************************************/


/***************************** START OF CURRENT USER DETAILS *********************************************************/

//User Details
var strUserName="";
var strUserImage="";
var strUserDescription="";
var strUserType="";
var strUserHealth="";
var strUserCapacity="";
var strUserCurrentBalance="";
var strUserCurrentDistanceTraveled="";

//User Location Details
var strUserCurrentLocationID="";
var strUserCurrentLocationName="";
var strUserCurrentLocationDescription="";
var strUserCurrentLocationLatitude="";
var strUserCurrentLocationLongitude="";
var strUserCurrentTravelZone="";

/***************************** END OF CURRENT USER DETAILS *********************************************************/


/***************************** START OF LOCATION DETAILS *********************************************************/

var strLocationID="Nothing";
var strLocationName="";
var strLocationImage="";
var strLocationDescription="";
//var strLocationCapital="";
var strLocationLongitude="";
var strLocationLatitude="";
var strLocationTravelZone="";

var strTravelCost=0;
var strTravelDistance=0; //Calculated

/***************************** END OF LOCATION DETAILS *********************************************************/

var intParamQuerySelectedRowNumber="";
var boolFirstTurn=true;
/***************************** START OF PRODUCT DETAILS *********************************************************/

var strProductID="";
var strProductName="";
var strProductImage="";
var strProductDescription="";
//var strProductStock="";
var strProductPriceHigh="";
var strProductPriceAverage="";
var strProductPriceLow="";
var strProductPriceCurrent="";
var strProductHistory="";

var strProductPriceCurrentNew=""; //Calculated

/***************************** END OF PRODUCT DETAILS *********************************************************/

// MONEY

var intProductsGrandTotal=0;
var strProductCurrentStock=0;

var strParamQuerySelectedRowFoundNumber=0;
var strParamQuerySelectedRowName="";


/***************************** START OF BUYING SESSION *********************************************************/

/***************************** END OF BUYING SESSION *********************************************************/

// TURN COUNTER
var strTurn=0;
var strTurnLimit=0;

var intGlobalProfit=0;



var intRandomEvent=0; // GLOBAL
var strGlobalUserDescription=""; // GLOBAL TEXT FOR USER DESCRIPTION
