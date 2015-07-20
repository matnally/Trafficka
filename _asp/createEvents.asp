<%

	function intRandomNumber(intHigh, intLow)
		Randomize 'initialize the random number generator
		intRandomNumber = Int((Rnd * intHigh) + intLow)
	end function

	Dim arrInterjectionPositive
		arrInterjectionPositive = Array(_
			,"Aha"_
			,"Behold"_
			,"Bravo"_
			,"Goodness"_
			,"Gracious"_
			,"Gosh"_
			,"Ha"_
			,"Huh"_
			,"My gosh"_
			,"Phew"_
			,"Uggh"_
			,"Woah"_
			,"Wow"_
			,"Yay"_
		)

	Dim arrInterjectionNegative
		arrInterjectionNegative = Array(_
			"Ahh"_
			,"Aha"_
			,"Ahem"_
			,"Alas"_
			,"Argh"_
			,"Behold"_
			,"Darn"_
			,"Dang"_
			,"Doh"_
			,"Drat"_
			,"Geepers"_
			,"Gee whiz"_
			,"Golly"_
			,"Goodness"_
			,"Gracious"_
			,"Gosh"_
			,"Huh"_
			,"My gosh"_
			,"Oops"_
			,"Ouch"_
			,"Shit"_
			,"Shite"_
			,"Shucks"_
			,"Uggh"_
			,"Woah"_
			,"Woops"_
			,"Wow"_
			,"Yikes"_
		)
		
	Dim arrNounPerson
		arrNounPerson = Array(_
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
			,"Clint Hyperwatchtick"_
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
			,"Phillip Phillip Annoyman"_
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

	Dim arrAdverb
		arrAdverb = Array(_
			"willfully"_
			,"abruptly"_
			,"firmly"_
			,"quickly"_
			,"lightly"_
			,"delicately"_
			,"wearily"_
			,"sorrowfully"_
			,"beautifully"_
			,"uneasily"_
			,"weirdly"_
			,"cheerfully"_
			,"expertly"_
			,"wholeheartedly"_
			,"randomly"_
			,"brutally"_
			,"really"_
			,"briskly"_
			,"sloppily"_
			,"wickedly"_
		)

	Dim arrPreposition
		arrPreposition = Array(_
			"harasses"_
			,"assaults"_
			,"argues"_
			,"disagrees"_
			,"criticises"_
		)

	Dim arrPronoun
		arrPronoun = Array(_
				"you"_
				,"your person"_
				,"your face"_
				,"ya"_
		)
















	Dim arrVerb
		arrVerb = Array(_
			"accelerate"_
			,"acts"_
			,"activates"_
			,"administers"_
			,"appears"_
		)

		
	Dim arrAdjective
		arrAdjective = Array(_
			"able"_
			,"abnormal"_
			,"absent-minded"_
			,"above average"_
			,"adventurous"_
			,"affectionate"_
			,"agile"_
			,"agreeable"_
			,"alert"_
			,"amazing"_
			,"ambitious"_
			,"amiable"_
			,"amusing"_
			,"analytical"_
			,"angelic"_
			,"apathetic"_
			,"apprehensive"_
			,"ardent"_
			,"artificial"_
			,"artistic"_
			,"assertive"_
			,"attentive"_
			,"average"_
			,"awesome"_
			,"awful"_
			,"balanced"_
			,"beautiful"_
			,"below average"_
			,"beneficent"_
			,"blue"_
			,"blunt"_
			,"boisterous"_
			,"brave"_
			,"bright"_
			,"brilliant"_
			,"buff"_
			,"callous"_
			,"candid"_
			,"cantankerous"_
			,"capable"_
			,"careful"_
			,"careless"_
			,"caustic"_
			,"cautious"_
			,"charming"_
			,"childish"_
			,"childlike"_
			,"cheerful"_
			,"chic"_
			,"churlish"_
			,"circumspect"_
			,"civil"_
			,"clean"_
			,"clever"_
			,"clumsy"_
			,"coherent"_
			,"cold"_
			,"competent"_
			,"composed"_
			,"conceited"_
			,"condescending"_
			,"confident"_
			,"confused"_
			,"conscientious"_
			,"considerate"_
			,"content"_
			,"cool"_
			,"cool-headed"_
			,"cooperative"_
			,"cordial"_
			,"courageous"_
			,"cowardly"_
			,"crabby"_
			,"crafty"_
			,"cranky"_
			,"crass"_
			,"critical"_
			,"cruel"_
			,"curious"_
			,"cynical"_
			,"dainty"_
			,"decisive"_
			,"deep"_
			,"deferential"_
			,"deft"_
			,"delicate"_
			,"demonic"_
			,"dependent"_
			,"delightful"_
			,"demure"_
			,"depressed"_
			,"devoted"_
			,"dextrous"_
			,"diligent"_
			,"direct"_
			,"dirty"_
			,"disagreeable"_
			,"discerning"_
			,"discreet"_
			,"disruptive"_
			,"distant"_
			,"distraught"_
			,"distrustful"_
			,"dowdy"_
			,"dramatic"_
			,"dreary"_
			,"drowsy"_
			,"drugged"_
			,"drunk"_
			,"dull"_
			,"dutiful"_
			,"eager"_
			,"earnest"_
			,"easy-going"_
			,"efficient"_
			,"egotistical"_
			,"elfin"_
			,"emotional"_
			,"energetic"_
			,"enterprising"_
			,"enthusiastic"_
			,"evasive"_
			,"even-tempered"_
			,"exacting"_
			,"excellent"_
			,"excitable"_
			,"experienced"_
			,"fabulous"_
			,"fastidious"_
			,"ferocious"_
			,"fervent"_
			,"fiery"_
			,"flabby"_
			,"flaky"_
			,"flashy"_
			,"frank"_
			,"friendly"_
			,"funny"_
			,"fussy"_
			,"generous"_
			,"gentle"_
			,"gloomy"_
			,"glutinous"_
			,"good"_
			,"grave"_
			,"great"_
			,"groggy"_
			,"grouchy"_
			,"guarded"_
			,"hateful"_
			,"hearty"_
			,"helpful"_
			,"hesitant"_
			,"hot-headed"_
			,"hypercritical"_
			,"hysterical"_
			,"idiotic"_
			,"idle"_
			,"illogical"_
			,"imaginative"_
			,"immature"_
			,"immodest"_
			,"impatient"_
			,"imperturbable"_
			,"impetuous"_
			,"impractical"_
			,"impressionable"_
			,"impressive"_
			,"impulsive"_
			,"inactive"_
			,"incisive"_
			,"incompetent"_
			,"inconsiderate"_
			,"inconsistent"_
			,"independent"_
			,"indiscreet"_
			,"indolent"_
			,"indefatigable"_
			,"industrious"_
			,"inexperienced"_
			,"insensitive"_
			,"inspiring"_
			,"intelligent"_
			,"interesting"_
			,"intolerant"_
			,"inventive"_
			,"irascible"_
			,"irritable"_
			,"irritating"_
			,"jocular"_
			,"jovial"_
			,"joyous"_
			,"judgmental"_
			,"keen"_
			,"kind"_
			,"lame"_
			,"lazy"_
			,"lean"_
			,"leery"_
			,"lethargic"_
			,"level-headed"_
			,"listless"_
			,"lithe"_
			,"lively"_
			,"local"_
			,"logical"_
			,"long-winded"_
			,"lovable"_
			,"love-lorn"_
			,"lovely"_
			,"maternal"_
			,"mature"_
			,"mean"_
			,"meddlesome"_
			,"mercurial"_
			,"methodical"_
			,"meticulous"_
			,"mild"_
			,"miserable"_
			,"modest"_
			,"moronic"_
			,"morose"_
			,"motivated"_
			,"musical"_
			,"naive"_
			,"nasty"_
			,"natural"_
			,"naughty"_
			,"negative"_
			,"nervous"_
			,"noisy"_
			,"normal"_
			,"nosy"_
			,"numb"_
			,"obliging"_
			,"obnoxious"_
			,"old-fashioned"_
			,"one-sided"_
			,"orderly"_
			,"ostentatious"_
			,"outgoing"_
			,"outspoken"_
			,"passionate"_
			,"passive"_
			,"paternal"_
			,"paternalistic"_
			,"patient"_
			,"peaceful"_
			,"peevish"_
			,"pensive"_
			,"persevering"_
			,"persnickety"_
			,"petulant"_
			,"picky"_
			,"plain"_
			,"plain-speaking"_
			,"playful"_
			,"pleasant"_
			,"plucky"_
			,"polite"_
			,"popular"_
			,"positive"_
			,"powerful"_
			,"practical"_
			,"prejudiced"_
			,"pretty"_
			,"proficient"_
			,"proud"_
			,"provocative"_
			,"prudent"_
			,"punctual"_
			,"quarrelsome"_
			,"querulous"_
			,"quick"_
			,"quick-tempered"_
			,"quiet"_
			,"realistic"_
			,"reassuring"_
			,"reclusive"_
			,"reliable"_
			,"reluctant"_
			,"resentful"_
			,"reserved"_
			,"resigned"_
			,"resourceful"_
			,"respected"_
			,"respectful"_
			,"responsible"_
			,"restless"_
			,"revered"_
			,"ridiculous"_
			,"sad"_
			,"sassy"_
			,"saucy"_
			,"sedate"_
			,"self-assured"_
			,"selfish"_
			,"sensible"_
			,"sensitive"_
			,"sentimental"_
			,"serene"_
			,"serious"_
			,"sharp"_
			,"short-tempered"_
			,"shrewd"_
			,"shy"_
			,"silly"_
			,"sincere"_
			,"sleepy"_
			,"slight"_
			,"sloppy"_
			,"slothful"_
			,"slovenly"_
			,"slow"_
			,"smart"_
			,"snazzy"_
			,"sneering"_
			,"snobby"_
			,"somber"_
			,"sober"_
			,"sophisticated"_
			,"soulful"_
			,"soulless"_
			,"sour"_
			,"spirited"_
			,"spiteful"_
			,"stable"_
			,"staid"_
			,"steady"_
			,"stern"_
			,"stoic"_
			,"striking"_
			,"strong"_
			,"stupid"_
			,"sturdy"_
			,"subtle"_
			,"sullen"_
			,"sulky"_
			,"supercilious"_
			,"superficial"_
			,"surly"_
			,"suspicious"_
			,"sweet"_
			,"tactful"_
			,"tactless"_
			,"talented"_
			,"testy"_
			,"thinking"_
			,"thoughtful"_
			,"thoughtless"_
			,"timid"_
			,"tired"_
			,"tolerant"_
			,"touchy"_
			,"tranquil"_
			,"ugly"_
			,"unaffected"_
			,"unbalanced"_
			,"uncertain"_
			,"uncooperative"_
			,"undependable"_
			,"unemotional"_
			,"unfriendly"_
			,"unguarded"_
			,"unhelpful"_
			,"unimaginative"_
			,"unmotivated"_
			,"unpleasant"_
			,"unpopular"_
			,"unreliable"_
			,"unsophisticated"_
			,"unstable"_
			,"unsure"_
			,"unthinking"_
			,"unwilling"_
			,"venal"_
			,"versatile"_
			,"vigilant"_
			,"warm"_
			,"warmhearted"_
			,"wary"_
			,"watchful"_
			,"weak"_
			,"well-behaved"_
			,"well-developed"_
			,"well-intentioned"_
			,"well-respected"_
			,"well-rounded"_
			,"willing"_
			,"wonderful"_
			,"volcanic"_
			,"vulnerable"_
			,"zealous"_
		)

		
Dim arrConjunction
	arrConjunction = Array(_
	
	)
	
Dim arrCoordinatingConjunctions	 'Joins words, phrases and in dependent clauses Example: The park is green, but it is greener in the winter.
	arrCoordinatingConjunctions = Array(_
			"for"_
			,"and"_
			,"nor"_
			,"but"_
			,"or"_
			,"yet"_
			,"so"_
	)

Dim arrSubordinatingConjunctions 'Introduces a dependent clause and ties it to an independent clause Example: If you leave, I will be lonely.
	arrSubordinatingConjunctions = Array(_
			"after"_
			,"although"_
			,"as"_
			,"as"_
			,"if as"_
			,"long as"_
			,"as much as"_
			,"as soon as"_
			,"as though"_
			,"because"_
			,"before"_
			,"even"_
			,"even if"_
			,"even though"_
			,"if"_
			,"if only"_
			,"if when"_
			,"if then"_
			,"inasmuch"_
			,"in order that"_
			,"just as"_
			,"lest"_
			,"now"_
			,"now since"_
			,"now that"_
			,"now when"_
			,"once"_
			,"provided"_
			,"provided that"_
			,"rather than"_
			,"since"_
			,"so that"_
			,"supposing than"_
			,"that"_
			,"though"_
			,"til"_
			,"unless"_
			,"until"_
			,"when"_
			,"whenever"_
			,"where"_
			,"whereas"_
			,"where if"_
			,"wherever"_
			,"whether"_
			,"which"_
			,"while"_
			,"who"_
			,"whoever"_
			,"why"_
		)

Dim arrCorrelativeConjunctions 'A pair of conjunctions that must be used together Example: I either want ice cream or yogurt.
	arrCorrelativeConjunctions = Array(_
			,"both / and"_
			,"not only / but also"_
			,"either / or"_
			,"neither / nor"_
			,"whether / or"_
			,"as / as"_
			,"such / that"_
			,"scarcely / when"_
			,"as many / as"_
			,"no sooner / than"_
			,"rather / than	"_
	)





Dim arrOpeningLine1
	arrOpeningLine1 = Array(_
			"A "_
			,""_
	)
Dim arrOpeningLine2
	arrOpeningLine2 = Array(_
			""_
			,""_
	)
Dim arrOpeningLine3
	arrOpeningLine3 = Array(_
			""_
			,""_
	)


		






'<span class='eventGood'>
'<span class='eventBad'>
'</span>
'
'speedily
'rapidly
'suddenly


'PART OF SPEECH	BASIC FUNCTION																		EXAMPLES
'========================================================================================================================================
'noun			names a person, place, or thing														pirate, Caribbean, ship
'pronoun		takes the place of a noun															I, you, he, she, it, ours, them, who
'verb			identifies action or state of being													sing, dance, believe, be
'adjective		modifies a noun																		hot, lazy, funny
'adverb			modifies a verb, adjective, or other adverb											softly, lazily, often
'preposition	shows a relationship between a noun (or pronoun) and other words in a sentence		up, over, against, by, for
'conjunction	joins words, phrases, and clauses													and, but, or, yet
'interjection	expresses emotion																	ah, whoops, ouch









	Dim objDom
	Dim objRoot
	Dim objChild
	Dim objChildNode
	Dim objChildChildNode
	Dim objPI

	Dim strChildsNodeName
	Dim strChildsNodeValue

	Dim strFilename 'Filename to use
		strFilename = Server.MapPath("events.xml")

		
	Set objDom = Server.CreateObject("Microsoft.XMLDOM") 'Instantiate the XMLDOM object using the CreateObject Method of the Server Object

	'Create PARENT	
	Set objRoot = objDom.createElement("eventlist") 'Create a reference to an IXMLDOMElement
		objDom.appendChild objRoot 'Use the appendChild Method of the XMLDOM Object to add the objRoot Element Reference to the XML Document


	For intNodes=0 to uBound(arrNounPerson)
	
		'Create CHILD
		Set objChild = objDom.createElement("event")
		objChild.setAttribute "id", intNodes 'Here i set attribute
		objRoot.appendChild objChild

			strChildsNodeName = "name"
			strChildsNodeValue = arrNounPerson(intNodes)		
			'strChildsNodeValue = arrNounPerson(intRandomNumber(uBound(arrNounPerson), 1))		
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode


Dim intMoneyDemanded
	intMoneyDemanded = intRandomNumber(10, 1) * 100

'Removes whitespace from name for filename
Dim strNameNoSpaces
	strNameNoSpaces = LCase(arrNounPerson(intNodes))
	strNameNoSpaces = Replace(strNameNoSpaces," ","",1,-1)

			strChildsNodeName = "image"
			strChildsNodeValue = "_img/events/" & strNameNoSpaces & ".png"
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "description"
			strChildsNodeValue = arrInterjectionNegative(intRandomNumber(uBound(arrInterjectionNegative)+1, LBound(arrInterjectionNegative))) & "! " & _
				"<span class='intVariables'>" & arrNounPerson(intNodes) & "</span> " & _
				"<span class='intVariables'>" & arrAdverb(intRandomNumber(uBound(arrAdverb)+1, LBound(arrAdverb))) & "</span> " & _
				"<span class='intVariables'>" & arrPreposition(intRandomNumber(uBound(arrPreposition)+1, LBound(arrPreposition))) & "</span> " & _
				arrPronoun(intRandomNumber(uBound(arrPronoun)+1, LBound(arrPronoun))) & "." & _
				"<br><br>" & _
				"<span class='intVariables'>" & arrNounPerson(intNodes) & "</span> demands you pay <span class='intVariables'>£" & intMoneyDemanded & "</span>." & _
				"<br><br>" & _
				"What do you want to do?"

'			strChildsNodeValue = arrAdverb(intRandomNumber(uBound(arrAdverb)+1, LBound(arrAdverb))) & " " & arrNounPerson(intNodes) & " " & arrVerb(intRandomNumber(uBound(arrVerb)+1, LBound(arrVerb)))
'			strChildsNodeValue = strChildsNodeValue & "<br><br>" & arrNounPerson(intNodes) & " " & arrPreposition(intRandomNumber(uBound(arrPreposition)+1, LBound(arrPreposition)))
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

			strChildsNodeName = "money"
			strChildsNodeValue = intMoneyDemanded
			'Create CHILD node
			Set objChildNode = objDom.createElement(strChildsNodeName)
				objChildNode.Text = strChildsNodeValue
				objChild.appendChild objChildNode

	Next

	
	Set objPI = objDom.createProcessingInstruction("xml","version='1.0' encoding='utf-8'") 'Add XML processing instruction
		
	objDom.insertBefore objPI, objDom.childNodes(0) 'Call insertBefore Method of the XMLDOM Object in order to insert the processing instruction before the root element (the zero element in the XMLDOM childNodes Collection
	
	objDom.Save strFilename 'If the file does not exist, it will be created. If it does exist, it will be overwritten

'response.Write intRandomNumber(uBound(arrDescription)+1,LBound(arrDescription))
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