<%

	function intRandomNumber(intHigh, intLow)
		Randomize 'initialize the random number generator
		intRandomNumber = Int((Rnd * intHigh) + intLow)
	end function


	function generateTravelZoneList()
	
		'Declare variables
		Dim sDefaultChars
		Dim strTravelZoneList
		Dim iPickedChar
		Dim iDefaultCharactersLength
		Dim intLength
		Dim intRepeat
		Dim boolSameNumber
			boolSameNumber = false
		'Initialize variables
		sDefaultChars="1234567890"
		'intLength=intRandomNumber(100, 1)
		intLength=100 'There will be duplicates so may as well create loads of random numbers
		iDefaultCharactersLength = Len(sDefaultChars)
		
		Randomize 'initialize the random number generator
		
		'Loop for the number of characters to have
		For i=0 To intLength
			
			'Picks number from 1 to length of character set
			iPickedChar = Int((iDefaultCharactersLength * Rnd) + 1)
	
			'Check for duplicates
			For ii=1 To Len(strTravelZoneList)
			
				if (Mid(strTravelZoneList, ii, 1) = ",") then
				else
					if (iPickedChar = cInt(Mid(strTravelZoneList, ii, 1))) then
						'found
						boolSameNumber = true
					end if
				end if		
			
			Next
			
			if (boolSameNumber=true) then
			else
				'Pick a character from character set, separated with a comma if not first one
				if (strTravelZoneList = "") then
					strTravelZoneList = strTravelZoneList & Mid(sDefaultChars,iPickedChar,1)
				else
					strTravelZoneList = strTravelZoneList & "," & Mid(sDefaultChars,iPickedChar,1)
				end if
			end if
			
		Next
		
		generateTravelZoneList = strTravelZoneList
		
	end function
	'Response.write generateTravelZoneList() 'Call the function & pass in 6 as the parameter 


	Dim arrProductNames
		arrProductNames = Array(_
			""_
		)
	
	
	Dim arrNames
		arrNames = Array(_
			"Alabaster Codify"_
			,"Alison Shithe"_
			,"Austen Tasseltine"_
			,"Barbara Wintergreen"_
			,"Barnaby Primp"_
			,"Benpole Bambendy"_
			,"Bidley Bodley Wilson"_
			,"Brant"_
			,"Brian Veltcher"_
			,"Chesney Christ"_
			,"Chingford Frock-Battery"_
			,"Clint Hyperhyperhyperwatchtick"_
			,"Clint Rimmer"_
			,"Colin Poppshed"_
			,"Collaterlie Sisters"_
			,"Condublasney Piper"_
			,"David Bovvinge"_
			,"David Compression"_
			,"David Jatt"_
			,"David Qunt"_
			,"David Sanction"_
			,"Dick Hickory"_
			,"Donnnald Beth'l'hem"_
			,"Douglas Trochs"_
			,"Engelbert Impromptu"_
			,"Eugene Fraxby"_
			,"Fact Portugal"_
			,"Gary Riot"_
			,"Gintilly Roundabout"_
			,"Gloriora Paymaster"_
			,"Graham Shithe"_
			,"Gypsum Fantastic"_
			,"Iggy Pop Barker"_
			,"Jaques Liverot"_
			,"Judy Lehewuttwohen"_
			,"Keith Boo-ha-ha"_
			,"La-di-da Hardcastle"_
			,"Lardon Irridesco"_
			,"Larkagin Babs"_
			,"Barry Harribean"_
			,"Massingbird Massingbird"_
			,"Melton Stitt"_
			,"Patrick College"_
			,"Patrick Da Fronk"_
			,"Pervis Grundy"_
			,"Peter O'Hanraha-hanrahan"_
			,"Peter Phile"_
			,"Peter Sisters-Christmas"_
			,"Pheona Haahlam"_
			,"Phillip Phillip Phillip Phillip Annoyman"_
			,"Polly Pantomime"_
			,"Romo Metaxxas"_
			,"Rosie May"_
			,"Simeon Sameon"_
			,"Sir Hugh Maharggs"_
			,"Sir Michael Cog-lucifer"_
			,"Sophie Valve"_
			,"Stephen Hole-hoisery"_
			,"Sylvester Stuart"_
			,"Tascam Holiday"_
			,"Ted Maul"_
			,"Tommy Territory"_
			,"Valerie Sinatra"_
		)

	Dim objDom
	Dim objRoot
	Dim objChild
	Dim objChildNode
	Dim objChildChildNode
	Dim objPI

	Dim strChildsNodeName
	Dim strChildsNodeValue

	Dim strFilename 'Filename to use
		strFilename = Server.MapPath("products.xml")

		
	Set objDom = Server.CreateObject("Microsoft.XMLDOM") 'Instantiate the XMLDOM object using the CreateObject Method of the Server Object

	'Create PARENT	
	Set objRoot = objDom.createElement("productlist") 'Create a reference to an IXMLDOMElement
		objDom.appendChild objRoot 'Use the appendChild Method of the XMLDOM Object to add the objRoot Element Reference to the XML Document


	For intNodes=0 to uBound(arrNames)
	
		'Create CHILD
		Set objChild = objDom.createElement("product")
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
			strChildsNodeValue = "_img/1.jpg"
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "description"
			strChildsNodeValue = "This is a description for " & arrNames(intNodes)
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "stock"
			strChildsNodeValue = intRandomNumber(100, 1)
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

				'///////////////////////////////////
				'> > > START CHILD CHILD
				'///////////////////////////////////
				
				strChildsNodeName = "price"
				strChildsNodeValue = "" 'Its a ChildChild so no need for a Value
				'Create CHILD node
				Set objChildNode = objDom.createElement(strChildsNodeName)
					objChildNode.Text = ""
					objChild.appendChild objChildNode
	
					strChildsNodeName = "high"
					strChildsNodeValue = intRandomNumber(100, 1)
					'Create ChildChild
					Set objChildChildNode = objDom.createElement(strChildsNodeName)
					objChildChildNode.Text = strChildsNodeValue
					objChildNode.AppendChild objChildChildNode
		
					strChildsNodeName = "average"
					strChildsNodeValue = intRandomNumber(75, 50)
					'Create ChildChild
					Set objChildChildNode = objDom.createElement(strChildsNodeName)
					objChildChildNode.Text = strChildsNodeValue
					objChildNode.AppendChild objChildChildNode
		
					strChildsNodeName = "low"
					strChildsNodeValue = intRandomNumber(50, 1)
					'Create ChildChild
					Set objChildChildNode = objDom.createElement(strChildsNodeName)
					objChildChildNode.Text = strChildsNodeValue
					objChildNode.AppendChild objChildChildNode
		
					strChildsNodeName = "current"
					strChildsNodeValue = intRandomNumber(50, 1)
					'Create ChildChild
					Set objChildChildNode = objDom.createElement(strChildsNodeName)
					objChildChildNode.Text = strChildsNodeValue
					objChildNode.AppendChild objChildChildNode
		
					strChildsNodeName = "history"
					strChildsNodeValue = 0 'generateTravelZoneList()
					'Create ChildChild
					Set objChildChildNode = objDom.createElement(strChildsNodeName)
					objChildChildNode.Text = strChildsNodeValue
					objChildNode.AppendChild objChildChildNode
	
				'///////////////////////////////////
				'> > > END CHILD CHILD
				'///////////////////////////////////

			strChildsNodeName = "travelzone"
			strChildsNodeValue = generateTravelZoneList()
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode
		
	Next

	
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