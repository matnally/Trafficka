<%

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
		strFilename = Server.MapPath("user.xml")

		
	Set objDom = Server.CreateObject("Microsoft.XMLDOM") 'Instantiate the XMLDOM object using the CreateObject Method of the Server Object

	'Create PARENT	
	Set objRoot = objDom.createElement("userlist") 'Create a reference to an IXMLDOMElement
		objDom.appendChild objRoot 'Use the appendChild Method of the XMLDOM Object to add the objRoot Element Reference to the XML Document

	
	'Create CHILD
	Set objChild = objDom.createElement("user")
	'objChild.setAttribute "id", intNodes 'Here i set attribute
	objRoot.appendChild objChild

	strChildsNodeName = "name"
	strChildsNodeValue = "Player 1"
	'strChildsNodeValue = arrNames(intRandomNumber(uBound(arrNames), 1))		
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode

	strChildsNodeName = "image"
	strChildsNodeValue = "_img/1.jpg"		
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode

	strChildsNodeName = "description"
	strChildsNodeValue = "This is the Player 1 profile."		
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode

	strChildsNodeName = "type"
	strChildsNodeValue = "Type"
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode
			
	strChildsNodeName = "health"
	strChildsNodeValue = "100"
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode
			
	strChildsNodeName = "capacity"
	strChildsNodeValue = "10"
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode
			
	strChildsNodeName = "money"
	strChildsNodeValue = "100"
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode
			
	strChildsNodeName = "location"
	strChildsNodeValue = "0"
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode
			
	strChildsNodeName = "distancetraveled"
	strChildsNodeValue = "0"
	'Create CHILD node
	Set objChildNode = objDom.createElement(strChildsNodeName)
		objChildNode.Text = strChildsNodeValue
		objChild.appendChild objChildNode
			

	
	Set objPI = objDom.createProcessingInstruction("xml","version='1.0' encoding='utf-8'") 'Add XML processing instruction
		
	objDom.insertBefore objPI, objDom.childNodes(0) 'Call insertBefore Method of the XMLDOM Object in order to insert the processing instruction before the root element (the zero element in the XMLDOM childNodes Collection
	
	objDom.Save strFilename 'If the file does not exist, it will be created. If it does exist, it will be overwritten

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