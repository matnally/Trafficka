<%

	Dim arrNames
		arrNames = Array(_
			"Asia"_
			,"Africa"_
			,"Antarctica"_
			,"Australia"_
			,"Europe"_
			,"North America"_
			,"South America"_
		)

	Dim arrContinentLongitude
		arrContinentLongitude = Array(_
			"86.6700"_
			,"21.0936"_
			,"0.0000"_
			,"149.1245"_
			,"25.3167"_
			,"100.1667"_
			,"59.4000"_
		)
		
	Dim arrContinentLatitude
		arrContinentLatitude = Array(_
			"46.2830"_
			,"7.1881"_
			,"90.0000"_
			,"35.3080"_
			,"54.9000"_
			,"48.1667"_
			,"13.0000"_
		)



	'///////////////////////////////////
	' XML logic
	'///////////////////////////////////
				
	Dim objDom
	Dim objRoot
	Dim objChild
	Dim objChildNode
	Dim objChildChildNode
	Dim objPI

	Dim strChildsNodeName
	Dim strChildsNodeValue

	Dim strFilename 'Filename to use
		strFilename = Server.MapPath("continents.xml")

		
	Set objDom = Server.CreateObject("Microsoft.XMLDOM") 'Instantiate the XMLDOM object using the CreateObject Method of the Server Object

	'Create PARENT	
	Set objRoot = objDom.createElement("locationlist") 'Create a reference to an IXMLDOMElement
		objDom.appendChild objRoot 'Use the appendChild Method of the XMLDOM Object to add the objRoot Element Reference to the XML Document


	For intNodes=0 to uBound(arrNames)
	
		Dim strNameNoSpaces
			strNameNoSpaces = LCase(arrNames(intNodes))
			strNameNoSpaces = Replace(strNameNoSpaces," ","",1,-1)
		
		'Create CHILD
		Set objChild = objDom.createElement("location")
		objChild.setAttribute "id", intNodes 'Here i set attribute
		objRoot.appendChild objChild

			strChildsNodeName = "name"
			strChildsNodeValue = arrNames(intNodes)		
			'strChildsNodeValue = arrNames(intRandomNumber(uBound(arrNames), 1))		
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "image"
			strChildsNodeValue = "_img/locations/" & strNameNoSpaces & ".jpg"		
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "tagline"
			strChildsNodeValue = "Short tagline of " & arrNames(intNodes)		
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "description"
			strChildsNodeValue = "This is a description."		
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "longitude"
			strChildsNodeValue = arrcontinentLongitude(intNodes)
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "latitude"
			strChildsNodeValue = arrcontinentLatitude(intNodes)
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "travelzone"
			strChildsNodeValue = intNodes
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode
			
	Next

	
	Set objPI = objDom.createProcessingInstruction("xml","version='1.0' encoding='utf-8'") 'Add XML processing instruction
		
	objDom.insertBefore objPI, objDom.childNodes(0) 'Call insertBefore Method of the XMLDOM Object in order to insert the processing instruction before the root element (the zero element in the XMLDOM childNodes Collection
	
	objDom.Save strFilename 'If the file does not exist, it will be created. If it does exist, it will be overwritten
	objDom.Save Server.MapPath("locations.xml")

	'Response.Write intRandomNumber(10, 1)
	Response.Redirect "../createXML.html"

	'Release all object references
	Set objDom = Nothing
	Set objRoot = Nothing
	Set objChild = Nothing
	Set objChildNode = Nothing
	Set objPI = Nothing

	Set strChildsNodeName = Nothing
	Set strChildsNodeValue = Nothing
	
%>