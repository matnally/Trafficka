<%

	function intRandomNumber(intHigh, intLow)
		Randomize 'initialize the random number generator
		intRandomNumber = Int((Rnd * intHigh) + intLow)
	end function


	Dim objDom
	Dim oItem

	'//////////////////////////////////////////////////////
	' START UPDATE NEW LOCATION
	'//////////////////////////////////////////////////////

	Dim strFilename
		'strFilename = Server.MapPath("\mat\xml\trafficka\_xml\user.xml") 'WORK
		strFilename = Server.MapPath("\trafficka\_xml\user.xml") 'HOME

	Dim strUserCurrentDistanceTraveled
		strUserCurrentDistanceTraveled = Request.Form("strUserCurrentDistanceTraveled")
	Dim strTravelDistance
		strTravelDistance = Request.Form("strTravelDistance")
	
	
	Dim strTravelCost
		strTravelCost = Request.Form("strTravelCost")
	
	Dim strUserCurrentBalance
		strUserCurrentBalance = Request.Form("strUserCurrentBalance")
	
	
	Dim strLocationValueNew
		strLocationValueNew = Request.form("location")
	
	Set objDom = Server.CreateObject("Microsoft.XMLDOM") 'Instantiate the XMLDOM object using the CreateObject Method of the Server Object

	'Turn off asyncronous file loading.
	objDom.async = false
	
	'Load the XML file.
	objDom.load(strFilename)

	'Update the Nodes
	For Each oItem In objDom.documentElement.selectNodes("user")


		oItem.selectSingleNode("money").text = cint(strUserCurrentBalance) - cint(strTravelCost)
		
		oItem.selectSingleNode("location").text = strLocationValueNew
		oItem.selectSingleNode("distancetraveled").text = cSng(strUserCurrentDistanceTraveled) + cSng(strTravelDistance)
		
	Next

	'After the XML file has been edited, is must be saved.
	objDom.save strFilename
	
	'//////////////////////////////////////////////////////
	' END UPDATE NEW LOCATION
	'//////////////////////////////////////////////////////



	'//////////////////////////////////////////////////////
	' START UPDATE PRICE HISTORY
	'//////////////////////////////////////////////////////

	'strFilename = Server.MapPath("\mat\xml\trafficka\_xml\products.xml") 'WORK
	strFilename = Server.MapPath("\trafficka\_xml\products.xml") 'HOME
	Set objDom = Server.CreateObject("Microsoft.XMLDOM") 'Instantiate the XMLDOM object using the CreateObject Method of the Server Object
	'Turn off asyncronous file loading.
	objDom.async = false
	objDom.load(strFilename)

	'Random number for new price histor
	Dim intHistoryTemp
	
	
		For Each oItem In objDom.documentElement.selectNodes("product")

			intHistoryTemp = intRandomNumber(oItem.selectSingleNode("price/high").text, oItem.selectSingleNode("price/low").text)

			oItem.selectSingleNode("price/history").text = oItem.selectSingleNode("price/history").text & "," & intHistoryTemp

		Next
		
	objDom.save strFilename
		
	'//////////////////////////////////////////////////////
	' END UPDATE PRICE HISTORY
	'//////////////////////////////////////////////////////

	'Release all of your object references.
	Set objDom = Nothing
	Set oItem = Nothing	
	Set strFilename = Nothing
	Set strChildNode = Nothing	
	Set strChildsNodeName = Nothing	
	Set strChildsNodeValue = Nothing	
	Set strChildsNodeValueNew = Nothing	

	'Response.Write "XML file created"

	Response.Redirect "../index.html"
	
%>  