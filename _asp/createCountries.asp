<%

	Dim arrNames
		arrNames = Array(_
			"Afghanistan"_
			,"Albania"_
			,"Algeria"_
			,"American Samoa"_
			,"Andorra"_
			,"Angola"_
			,"Antigua and Barbuda"_
			,"Argentina"_
			,"Armenia"_
			,"Aruba"_
			,"Australia"_
			,"Austria"_
			,"Azerbaijan"_
			,"Bahamas"_
			,"Bahrain"_
			,"Bangladesh"_
			,"Barbados"_
			,"Belarus"_
			,"Belgium"_
			,"Belize"_
			,"Benin"_
			,"Bhutan"_
			,"Bolivia"_
			,"Bosnia and Herzegovina"_
			,"Botswana"_
			,"Brazil"_
			,"British Virgin Islands"_
			,"Brunei Darussalam"_
			,"Bulgaria"_
			,"Burkina Faso"_
			,"Burundi"_
			,"Cambodia"_
			,"Cameroon"_
			,"Canada"_
			,"Cape Verde"_
			,"Cayman Islands"_
			,"Central African Republic"_
			,"Chad"_
			,"Chile"_
			,"China"_
			,"Colombia"_
			,"Comros"_
			,"Congo"_
			,"Costa Rica"_
			,"Cote d'Ivoire"_
			,"Croatia"_
			,"Cuba"_
			,"Cyprus"_
			,"Czech Republic"_
			,"Democratic People Republic of North Korea"_
			,"Democratic Republic of the Congo"_
			,"Denmark"_
			,"Djibouti"_
			,"Dominica"_
			,"Dominica Republic"_
			,"East Timor"_
			,"Ecuador"_
			,"Egypt"_
			,"El Salvador"_
			,"Equatorial Guinea"_
			,"Eritrea"_
			,"Estonia"_
			,"Ethiopia"_
			,"Falkland Islands"_
			,"Faroe Islands"_
			,"Fiji"_
			,"Finland"_
			,"France"_
			,"French Guiana"_
			,"French Polynesia"_
			,"Gabon"_
			,"Gambia"_
			,"Georgia"_
			,"Germany"_
			,"Ghana"_
			,"Greece"_
			,"Greenland"_
			,"Guadeloupe"_
			,"Guatemala"_
			,"Guernsey"_
			,"Guinea"_
			,"Guinea-Bissau"_
			,"Guyana"_
			,"Haiti"_
			,"Heard Island and McDonald Islands"_
			,"Honduras"_
			,"Hungary"_
			,"Iceland"_
			,"India"_
			,"Indonesia"_
			,"Iran (Islamic Republic of)"_
			,"Iraq"_
			,"Ireland"_
			,"Israel"_
			,"Italy"_
			,"Jamaica"_
			,"Jordan"_
			,"Kazakhstan"_
			,"Kenya"_
			,"Kiribati"_
			,"Kuwait"_
			,"Kyrgyzstan"_
			,"Lao People Democratic Republic"_
			,"Latvia"_
			,"Lebanon"_
			,"Lesotho"_
			,"Liberia"_
			,"Libyan Arab Jamahiriya"_
			,"Liechtenstein"_
			,"Lithuania"_
			,"Luxembourg"_
			,"Macao, China"_
			,"Madagascar"_
			,"Malawi"_
			,"Malaysia"_
			,"Maldives"_
			,"Mali"_
			,"Malta"_
			,"Martinique"_
			,"Mauritania"_
			,"Mayotte"_
			,"Mexico"_
			,"Micronesia"_
			,"Moldova"_
			,"Mozambique"_
			,"Myanmar"_
			,"Namibia"_
			,"Nepal"_
			,"Netherlands"_
			,"Netherlands Antilles"_
			,"New Caledonia"_
			,"New Zealand"_
			,"Nicaragua"_
			,"Niger"_
			,"Nigeria"_
			,"Norfolk Island"_
			,"Northern Mariana Islands"_
			,"Norway"_
			,"Oman"_
			,"Pakistan"_
			,"Palau"_
			,"Panama"_
			,"Papua New Guinea"_
			,"Paraguay"_
			,"Peru"_
			,"Philippines"_
			,"Poland"_
			,"Portugal"_
			,"Puerto Rico"_
			,"Qatar"_
			,"Republic of South Korea"_
			,"Romania"_
			,"Russian Federation"_
			,"Rawanda"_
			,"Saint Kitts and Nevis"_
			,"Saint Lucia"_
			,"Saint Pierre and Miquelon"_
			,"Saint vincent and the Grenadines"_
			,"Samoa"_
			,"San Marino"_
			,"Sao Tome and Principe"_
			,"Saudi Arabia"_
			,"Senegal"_
			,"Sierra Leone"_
			,"Slovakia"_
			,"Slovenia"_
			,"Solomon Islands"_
			,"Somalia"_
			,"South Africa"_
			,"Spain"_
			,"Sudan"_
			,"Suriname"_
			,"Swaziland"_
			,"Sweden"_
			,"Switzerland"_
			,"Syrian Arab Republic"_
			,"Tajikistan"_
			,"Thailand"_
			,"The Former Yugoslav Republic of Macedonia"_
			,"Togo"_
			,"Tonga"_
			,"Tunisia"_
			,"Turkey"_
			,"Turkmenistan"_
			,"Tuvalu"_
			,"Uganda"_
			,"Ukraine"_
			,"United Arab Emirates"_
			,"United Kingdom of Great Britain"_
			,"United Republic of Tanzania"_
			,"United States of America"_
			,"United States of Virgin Islands"_
			,"Uruguay"_
			,"Uzbekistan"_
			,"Vanuatu"_
			,"Venezuela"_
			,"Vietnam"_
			,"Yugoslavia"_
			,"Zambia"_
			,"Zimbabwe"_
		)
		
	Dim arrCountryCapital
		arrCountryCapital = Array(_
			"Kabul"_
			,"Tirane"_
			,"Algiers"_
			,"Pago Pago"_
			,"Andorra la Vella"_
			,"Luanda"_
			,"W. Indies"_
			,"Buenos Aires"_
			,"Yerevan"_
			,"Oranjestad"_
			,"Canberra"_
			,"Vienna"_
			,"Baku"_
			,"Nassau"_
			,"Manama"_
			,"Dhaka"_
			,"Bridgetown"_
			,"Minsk"_
			,"Brussels"_
			,"Belmopan"_
			,"Porto-Novo"_
			,"Thimphu"_
			,"La Paz"_
			,"Sarajevo"_
			,"Gaborone"_
			,"Brasilia"_
			,"Road Town"_
			,"Bandar Seri Begawan"_
			,"Sofia"_
			,"Ouagadougou"_
			,"Bujumbura"_
			,"Phnom Penh"_
			,"Yaounde"_
			,"Ottawa"_
			,"Praia"_
			,"George Town"_
			,"Bangui"_
			,"N'Djamena"_
			,"Santiago"_
			,"Beijing"_
			,"Bogota"_
			,"Moroni"_
			,"Brazzaville"_
			,"San Jose"_
			,"Yamoussoukro"_
			,"Zagreb"_
			,"Havana"_
			,"Nicosia"_
			,"Prague"_
			,"P'yongyang"_
			,"Kinshasa"_
			,"Copenhagen"_
			,"Djibouti"_
			,"Roseau"_
			,"Santo Domingo"_
			,"Dili"_
			,"Quito"_
			,"Cairo"_
			,"San Salvador"_
			,"Malabo"_
			,"Asmara"_
			,"Tallinn"_
			,"Addis Ababa"_
			,"Stanley"_
			,"Torshavn"_
			,"Suva"_
			,"Helsinki"_
			,"Paris"_
			,"Cayenne"_
			,"Papeete"_
			,"Libreville"_
			,"Banjul"_
			,"T'bilisi"_
			,"Berlin"_
			,"Accra"_
			,"Athens"_
			,"Nuuk"_
			,"Basse-Terre"_
			,"Guatemala"_
			,"St. Peter Port"_
			,"Conakry"_
			,"Bissau"_
			,"Georgetown"_
			,"Port-au-Prince"_
			,"N/A"_
			,"Tegucigalpa"_
			,"Budapest"_
			,"Reykjavik"_
			,"New Delhi"_
			,"Jakarta"_
			,"Tehran"_
			,"Baghdad"_
			,"Dublin"_
			,"Jerusalem"_
			,"Rome"_
			,"Kingston"_
			,"Amman"_
			,"Astana"_
			,"Nairobi"_
			,"Tarawa"_
			,"Kuwait"_
			,"Bishkek"_
			,"Vientiane"_
			,"Riga"_
			,"Beirut"_
			,"Maseru"_
			,"Monrovia"_
			,"Tripoli"_
			,"Vaduz"_
			,"Vilnius"_
			,"Luxembourg"_
			,"Macau"_
			,"Antananarivo"_
			,"Lilongwe"_
			,"Kuala Lumpur"_
			,"Male"_
			,"Bamako"_
			,"Valletta"_
			,"Fort-de-France"_
			,"Nouakchott"_
			,"Mamoudzou"_
			,"Mexico"_
			,"Palikir"_
			,"Chisinau"_
			,"Maputo"_
			,"Yangon"_
			,"Windhoek"_
			,"Kathmandu"_
			,"Amsterdam"_
			,"Willemstad"_
			,"Noumea"_
			,"Wellington"_
			,"Managua"_
			,"Niamey"_
			,"Abuja"_
			,"Kingston"_
			,"Saipan"_
			,"Oslo"_
			,"Masqat"_
			,"Islamabad"_
			,"Koror"_
			,"Panama"_
			,"Port Moresby"_
			,"Asuncion"_
			,"Lima"_
			,"Manila"_
			,"Warsaw"_
			,"Lisbon"_
			,"San Juan"_
			,"Doha"_
			,"Seoul"_
			,"Bucuresti"_
			,"Moskva"_
			,"Kigali"_
			,"Basseterre"_
			,"Castries"_
			,"Saint-Pierre"_
			,"Kingstown"_
			,"Apia"_
			,"San Marino"_
			,"Sao Tome"_
			,"Riyadh"_
			,"Dakar"_
			,"Freetown"_
			,"Bratislava"_
			,"Ljubljana"_
			,"Honiara"_
			,"Mogadishu"_
			,"Cape Town"_
			,"Madrid"_
			,"Khartoum"_
			,"Paramaribo"_
			,"Mbabane"_
			,"Stockholm"_
			,"Bern"_
			,"Damascus"_
			,"Dushanbe"_
			,"Bangkok"_
			,"Skopje"_
			,"Lome"_
			,"Nuku'alofa"_
			,"Tunis"_
			,"Ankara"_
			,"Ashgabat"_
			,"Funafuti"_
			,"Kampala"_
			,"Kiev"_
			,"Abu Dhabi"_
			,"London"_
			,"Dodoma"_
			,"Washington DC"_
			,"Charlotte Amalie"_
			,"Montevideo"_
			,"Tashkent"_
			,"Port-Vila"_
			,"Caracas"_
			,"Hanoi"_
			,"Belgrade"_
			,"Lusaka"_
			,"Harare"_
		)
		
	Dim arrCountryLongitude
		arrCountryLongitude = Array(_
			"69.11"_
			,"19.49"_
			,"3.08"_
			,"170.43"_
			,"1.32"_
			,"13.15"_
			,"61.48"_
			,"60"_
			,"44.31"_
			,"70.02"_
			,"149.08"_
			,"16.22"_
			,"49.56"_
			,"77.2"_
			,"50.3"_
			,"90.26"_
			,"59.3"_
			,"27.3"_
			,"4.21"_
			,"88.3"_
			,"2.42"_
			,"89.45"_
			,"68.1"_
			,"18.26"_
			,"25.57"_
			,"47.55"_
			,"64.37"_
			,"115"_
			,"23.2"_
			,"1.3"_
			,"29.18"_
			,"104.55"_
			,"11.35"_
			,"75.42"_
			,"23.34"_
			,"81.24"_
			,"18.35"_
			,"14.59"_
			,"70.4"_
			,"116.2"_
			,"74"_
			,"43.16"_
			,"15.12"_
			,"84.02"_
			,"5.17"_
			,"15.58"_
			,"82.22"_
			,"33.25"_
			,"14.22"_
			,"125.3"_
			,"15.15"_
			,"12.34"_
			,"42.2"_
			,"61.24"_
			,"69.59"_
			,"125.34"_
			,"78.35"_
			,"31.14"_
			,"89.1"_
			,"8.5"_
			,"38.55"_
			,"24.48"_
			,"38.42"_
			,"59.51"_
			,"6.56"_
			,"178.3"_
			,"25.03"_
			,"2.2"_
			,"52.18"_
			,"149.34"_
			,"9.26"_
			,"16.4"_
			,"44.5"_
			,"13.25"_
			,"0.06"_
			,"23.46"_
			,"51.35"_
			,"61.44"_
			,"90.22"_
			,"2.33"_
			,"13.49"_
			,"15.45"_
			,"58.12"_
			,"72.2"_
			,"74"_
			,"87.14"_
			,"19.05"_
			,"21.57"_
			,"77.13"_
			,"106.49"_
			,"51.3"_
			,"44.3"_
			,"6.15"_
			,"35.12"_
			,"12.29"_
			,"76.5"_
			,"35.52"_
			,"71.3"_
			,"36.48"_
			,"173"_
			,"48"_
			,"74.46"_
			,"102.36"_
			,"24.08"_
			,"35.31"_
			,"27.3"_
			,"10.47"_
			,"13.07"_
			,"9.31"_
			,"25.19"_
			,"6.09"_
			,"113.33"_
			,"47.31"_
			,"33.48"_
			,"101.41"_
			,"73.28"_
			,"7.55"_
			,"14.31"_
			,"61.02"_
			,"57.3"_
			,"45.14"_
			,"99.1"_
			,"158.09"_
			,"28.5"_
			,"32.32"_
			,"96.2"_
			,"17.04"_
			,"85.2"_
			,"4.54"_
			,"69"_
			,"166.3"_
			,"174.46"_
			,"86.2"_
			,"2.06"_
			,"7.32"_
			,"168.43"_
			,"145.45"_
			,"10.45"_
			,"58.36"_
			,"73.1"_
			,"134.28"_
			,"79.25"_
			,"147.08"_
			,"57.3"_
			,"77"_
			,"121.03"_
			,"21"_
			,"9.1"_
			,"66.07"_
			,"51.35"_
			,"126.58"_
			,"26.1"_
			,"37.35"_
			,"30.04"_
			,"62.43"_
			,"60.58"_
			,"56.12"_
			,"61.1"_
			,"171.5"_
			,"12.3"_
			,"6.39"_
			,"46.42"_
			,"17.29"_
			,"13.17"_
			,"17.07"_
			,"14.33"_
			,"159.57"_
			,"45.25"_
			,"28.12"_
			,"3.45"_
			,"32.35"_
			,"55.1"_
			,"31.06"_
			,"18.03"_
			,"7.28"_
			,"36.18"_
			,"68.48"_
			,"100.35"_
			,"21.26"_
			,"1.2"_
			,"174"_
			,"10.11"_
			,"32.54"_
			,"57.5"_
			,"179.13"_
			,"32.3"_
			,"30.28"_
			,"54.22"_
			,"0.05"_
			,"35.45"_
			,"77.02"_
			,"64.56"_
			,"56.11"_
			,"69.1"_
			,"168.18"_
			,"66.55"_
			,"105.55"_
			,"20.37"_
			,"28.16"_
			,"31.02"_
		)
		
	Dim arrCountryLatitude
		arrCountryLatitude = Array(_
			"34.28"_
			,"41.18"_
			,"36.42"_
			,"14.16"_
			,"42.31"_
			,"8.5"_
			,"17.2"_
			,"36.3"_
			,"40.1"_
			,"12.32"_
			,"35.15"_
			,"48.12"_
			,"40.29"_
			,"25.05"_
			,"26.1"_
			,"23.43"_
			,"13.05"_
			,"53.52"_
			,"50.51"_
			,"17.18"_
			,"6.23"_
			,"27.31"_
			,"16.2"_
			,"43.52"_
			,"24.45"_
			,"15.47"_
			,"18.27"_
			,"4.52"_
			,"42.45"_
			,"12.15"_
			,"3.16"_
			,"11.33"_
			,"3.5"_
			,"45.27"_
			,"15.02"_
			,"19.2"_
			,"4.23"_
			,"12.1"_
			,"33.24"_
			,"39.55"_
			,"4.34"_
			,"11.4"_
			,"4.09"_
			,"9.55"_
			,"6.49"_
			,"45.5"_
			,"23.08"_
			,"35.1"_
			,"50.05"_
			,"39.09"_
			,"4.2"_
			,"55.41"_
			,"11.08"_
			,"15.2"_
			,"18.3"_
			,"8.29"_
			,"0.15"_
			,"30.01"_
			,"13.4"_
			,"3.45"_
			,"15.19"_
			,"59.22"_
			,"9.02"_
			,"51.4"_
			,"62.05"_
			,"18.06"_
			,"60.15"_
			,"48.5"_
			,"5.05"_
			,"17.32"_
			,"0.25"_
			,"13.28"_
			,"41.43"_
			,"52.3"_
			,"5.35"_
			,"37.58"_
			,"64.1"_
			,"16"_
			,"14.4"_
			,"49.26"_
			,"9.29"_
			,"11.45"_
			,"6.5"_
			,"18.4"_
			,"53"_
			,"14.05"_
			,"47.29"_
			,"64.1"_
			,"28.37"_
			,"6.09"_
			,"35.44"_
			,"33.2"_
			,"53.21"_
			,"31.47"_
			,"41.54"_
			,"18"_
			,"31.57"_
			,"51.1"_
			,"1.17"_
			,"1.3"_
			,"29.3"_
			,"42.54"_
			,"17.58"_
			,"56.53"_
			,"33.53"_
			,"29.18"_
			,"6.18"_
			,"32.49"_
			,"47.08"_
			,"54.38"_
			,"49.37"_
			,"22.12"_
			,"18.55"_
			,"14"_
			,"3.09"_
			,"4"_
			,"12.34"_
			,"35.54"_
			,"14.36"_
			,"20.1"_
			,"12.48"_
			,"19.2"_
			,"6.55"_
			,"47.02"_
			,"25.58"_
			,"16.45"_
			,"22.35"_
			,"27.45"_
			,"52.23"_
			,"12.05"_
			,"22.17"_
			,"41.19"_
			,"12.06"_
			,"13.27"_
			,"9.05"_
			,"45.2"_
			,"15.12"_
			,"59.55"_
			,"23.37"_
			,"33.4"_
			,"7.2"_
			,"9"_
			,"9.24"_
			,"25.1"_
			,"12"_
			,"14.4"_
			,"52.13"_
			,"38.42"_
			,"18.28"_
			,"25.15"_
			,"37.31"_
			,"44.27"_
			,"55.45"_
			,"1.59"_
			,"17.17"_
			,"14.02"_
			,"46.46"_
			,"13.1"_
			,"13.5"_
			,"43.55"_
			,"0.1"_
			,"24.41"_
			,"14.34"_
			,"8.3"_
			,"48.1"_
			,"46.04"_
			,"9.27"_
			,"2.02"_
			,"25.44"_
			,"40.25"_
			,"15.31"_
			,"5.5"_
			,"26.18"_
			,"59.2"_
			,"46.57"_
			,"33.3"_
			,"38.33"_
			,"13.45"_
			,"42.01"_
			,"6.09"_
			,"21.1"_
			,"36.5"_
			,"39.57"_
			,"38"_
			,"8.31"_
			,"0.2"_
			,"50.3"_
			,"24.28"_
			,"51.36"_
			,"6.08"_
			,"39.91"_
			,"18.21"_
			,"34.5"_
			,"41.2"_
			,"17.45"_
			,"10.3"_
			,"21.05"_
			,"44.5"_
			,"15.28"_
			,"17.43"_
		)



'	Dim intAttributes
'		intAttributes = 4
'		intAttributes = intAttributes-1 'ARRAYS START AT 0 REMEMBER!!!
'	
'	Dim arrCountryDetails
'		arrCountryDetails = Array()
'		reDim arrCountryDetails(UBound(arrNames), intAttributes) 'Resize array
'
'	'ASSIGN details
'	For i=0 to uBound(arrNames)
'		arrCountryDetails(i,0) = arrNames(i)
'		arrCountryDetails(i,1) = arrCountryCapital(i)
'		arrCountryDetails(i,2) = arrCountryLongitude(i)
'		arrCountryDetails(i,3) = arrCountryLatitude(i)
'	Next
'
'	'OUTPUT details
'	For i=0 to uBound(arrCountryDetails)
'		For ii=0 to intAttributes
'			Response.write arrCountryDetails(i,ii) & "<br>"
'		Next
'		Response.write "<br>"
'	Next





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
		strFilename = Server.MapPath("countries.xml")

		
	Set objDom = Server.CreateObject("Microsoft.XMLDOM") 'Instantiate the XMLDOM object using the CreateObject Method of the Server Object

	'Create PARENT	
	Set objRoot = objDom.createElement("locationlist") 'Create a reference to an IXMLDOMElement
		objDom.appendChild objRoot 'Use the appendChild Method of the XMLDOM Object to add the objRoot Element Reference to the XML Document


	For intNodes=0 to uBound(arrNames)
	
'Removes whitespace from name for filename
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

			strChildsNodeName = "capital"
			strChildsNodeValue = arrCountryCapital(intNodes)
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "longitude"
			strChildsNodeValue = arrCountryLongitude(intNodes)
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "latitude"
			strChildsNodeValue = arrCountryLatitude(intNodes)
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