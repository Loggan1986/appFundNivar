//Con este script se podran listar los municipios segun el departamento
function munColombia(departamento,municipio){
	var departamento = document.getElementById(departamento);
	var municipio = document.getElementById(municipio);

	municipio.innerHTML ="";

	if (departamento.value == "Amazonas") {
		var optionArray =["select |- Municipio/Corregimiento -","El Encanto|El Encanto","La Chorrera|La Chorrera","La Pedrera|La Pedrera","La Victoria|La Victoria","Leticia|Leticia",
		"Mirití-Paraná|Mirití-Paraná","Puerto Alegría|Puerto Alegría","Puerto Arica|Puerto Arica","Puerto Nariño|Puerto Nariño",
		"Puerto Santander|Puerto Santander","Tarapacá|Tarapacá"]
	

	}else if (departamento.value == "Antioquia") {
		var optionArray = ["select |- Municipio/Corregimiento -","Cáceres|Cáceres","Caucasia|Caucasia","El Bagre|El Bagre","Nechí|Nechí","Tarazá|Tarazá","Zaragoza|Zaragoza","Caracolí|Caracolí",
		"Maceo|Maceo","Puerto Berrío|Puerto Berrío","Puerto Nare|Puerto Nare","Puerto Triunfo|Puerto Triunfo","Yondó|Yondó","Amalfi|Amalfi",
		"Anorí|Anorí","Cisneros|Cisneros","Remedios|Remedios","San Roque|San Roque","Santo Domingo|Santo Domingo","Segovia|Segovia","Vegachí|Vegachí",
		"Yalí|Yalí","Yolombó|Yolombó","Angostura|Angostura","Belmira|Belmira","Briceño|Briceño","Campamento|Campamento","Carolina Del Príncipe|Carolina Del Príncipe",
		"Don Matias|Don Matias","Entrerrios|Entrerrios","Gómez Plata|Gómez Plata","Guadalupe|Guadalupe","Ituango|Ituango","San Andrés De Cuerquia|San Andrés De Cuerquia",
		"San José De La Montaña|San José De La Montaña","San Pedro De Los Milagros|San Pedro De Los Milagros","Santa Rosa De Osos|Santa Rosa De Osos",
		"Toledo|Toledo","Valdivia|Valdivia","Yarumal|Yarumal","Abriaquí|Abriaquí","Antioquia|Antioquia","Anzá|Anzá","Armenia|Armenia","Buriticá|Buriticá",
		"Caicedo|Caicedo","Cañasgordas|Cañasgordas","Dabeiba|Dabeiba","Ebéjico|Ebéjico","Frontino|Frontino","Giraldo|Giraldo","Heliconia|Heliconia",
		"Liborina|Liborina","Olaya|Olaya","Peque|Peque","Sabanalarga|Sabanalarga","San Jerónimo|San Jerónimo","Sopetrán|Sopetrán","Uramita|Uramita",
		"Abejorral|Abejorral","Alejandría|Alejandría","Argelia|Argelia","El Carmen De Viboral|El Carmen De Viboral","Cacorná|Cacorná",
		"Concepción|Concepción","El Peñol|El Peñol","El Retiro|El Retiro","El Santuario|El Santuario","Granada|Granada","Guarne|Guarne",
		"Guatapé|Guatapé","La Ceja|La Ceja","La Unión|La Unión","Marinilla|Marinilla","Nariño|Nariño","Rionegro|Rionegro","San Carlos|San Carlos",
		"San Francisco|San Francisco","San Luis|San Luis","San Rafael|San Rafael","San Vicente|San Vicente","Sansón|Sansón","Amagá|Amagá","Andes|Andes",
		"Angelópolis|Angelópolis","Betania|Betania","Betulia|Betulia","Caramanta|Caramanta","Ciudad Bolívar|Ciudad Bolívar","Concordia|Concordia",
		"Fredonia|Fredonia","Hispania|Hispania","Jardín|Jardín","Jericó|Jericó","La Pintada|La Pintada","Montebello|Montebello","Pueblorrico|Pueblorrico",
		"Salgar|Salgar","Santa Bárbara|Santa Bárbara","Támesis|Támesis","Tarso|Tarso","Titiribí|Titiribí","Urrao|Urrao","Valparaíso|Valparaíso",
		"Venecia|Venecia","Apartadó|Apartadó","Arboletes|Arboletes","Carepa|Carepa","Chigorodó|Chigorodó","Murindó|Murindó","Mutatá|Mutatá","Necoclí|Necoclí",
		"San Juan de Urabá|San Juan de Urabá","San Pedro De Urabá|San Pedro De Urabá","Turbo|Turbo","Vigía Del Fuerte|Vigía Del Fuerte","Barbosa|Barbosa",
		"Bello|Bello","Caldas|Caldas","Copacabana|Copacabana","Envigado|Envigado","Girardota|Girardota","Itagüí|Itagüí","La Estrella|La Estrella",
		"Medellin|Medellin","Sabaneta|Sabaneta"]

	}else if (departamento.value == "Arauca") {
		var optionArray = ["select |- Municipio/Corregimiento -","Arauca|Arauca","Arauquita|Arauquita","Cravo Norte|Cravo Norte","Fortul|Fortul","Puerto Rondón|Puerto Rondón",
		"Saravena|Saravena","Tame|Tame"]

	}else if (departamento.value == "Atlántico") {
		var optionArray = ["select |- Municipio/Corregimiento -","Barranquilla|Barranquilla","Baranoa|Baranoa","Campo De La Cruz|Campo De La Cruz","Candelaria|Candelaria","Galapa|Galapa",
		"Juan De Acosta|Juan De Acosta","Luruaco|Luruaco","Malambo|Malambo","Manatí|Manatí","Palmar De Varela|Palmar De Varela","Piojó|Piojó",
		"Polonuevo|Polonuevo","Ponedera|Ponedera","Puerto Colombia|Puerto Colombia","Repelón|Repelón","Sabanagrande|Sabanagrande",
		"Sabanalarga|Sabanalarga","Santo Lucía|Santo Lucía","Santo Tomás|Santo Tomás","Soledad|Soledad","Suaán|Suaán","Tubará|Tubará","Usiacurí|Usiacurí"]
	
	}else if (departamento.value == "Bogotá") {
		var optionArray = ["select |- Municipio/Corregimiento -","Bogotá|Bogotá"]

	}else if (departamento.value == "Bolívar") {
		var optionArray = ["select |- Municipio/Corregimiento -","Achí|Achí","Altos Del Rosario|Altos Del Rosario","Arenal|Arenal","Arjona|Arjona","Arroyohondo|Arroyohondo",
		"Barranco De Loba|Barranco De Loba","Calamar|Calamar","Cantagallo|Cantagallo","El Carmen De Bolívar|El Carmen De Bolívar",
		"Cartagena De Indias|Cartagena De Indias","Cicuco|Cicuco","Clemancia|Clemancia","Córdoba|Córdoba","El Guamo|El Guamo",
		"El peñón|El peñón","Hatillo De Loba|Hatillo De Loba","Magangué|Magangué","Mahates|Mahates","Margarita|Margarita",
		"María La Baja|María La Baja","Montecristo|Montecristo","Morales|Morales","Norosí|Norosí","Pinillos|Pinillos","Regidor|Regidor",
		"Rio Viejo|Rio Viejo","San Cristóbal|San Cristóbal","San Estanislao|San Estanislao","San Fernando|San Fernando","San Jacinto|San Jacinto",
		"San Jacinto Del Cauca|San Jacinto Del Cauca","San Juan De Nepomuceno|San Juan De Nepomuceno","San Martín De Loba|San Martín De Loba",
		"San Pablo|San Pablo","Santa Catalina|Santa Catalina","Santa Cruz De Mompox|Santa Cruz De Mompox","Santa Rosa|Santa Rosa",
		"Santa Rosa Del Sur|Santa Rosa Del Sur","Simití|Simití","Soplaviento|Soplaviento","Talaigua Nuevo|Talaigua Nuevo",
		"Tiquisio|Tiquisio","Turbaco|Turbaco","Turbaná|Turbaná","Villanueva|Villanueva","Zambrano|Zambrano"]


	}else if (departamento.value == "Boyacá") {
		var optionArray = ["select |- Municipio/Corregimiento -","Chíquiza|Chíquiza","Chivatá|Chivatá","Cómbita|Cómbita","Cucaita|Cucaita","Motavita|Motavita","Oicatá|Oicatá",
		"Samacá|Samacá","Siachoque|Siachoque","Sora|Sora","Soracá|Soracá","Sotaquirá|Sotaquirá","Toca|Toca","Tunja|Tunja","Tunja|Tunja","Tuta|Tuta",
		"Ventaquemada|Ventaquemada","Chiscas|Chiscas","El Cocuy|El Cocuy","El Ospino|El Ospino","Guacamayas|Guacamayas","Güicán|Güicán","Panqueba|Panqueba",
		"Labranzagrande|Labranzagrande","Pajarito|Pajarito","Paya|Paya","Pisba|Pisba","Berbeo|Berbeo","Campohermoso|Campohermoso","Miraflores|Miraflores",
		"Páez|Páez","San Eduardo|San Eduardo","Zetaquira|Zetaquira","Boyacá|Boyacá","Ciénaga|Ciénaga","Jenesano|Jenesano","Nuevo Cólon|Nuevo Cólon",
		"Ramiriquí|Ramiriquí","Rondón|Rondón","Tibaná|Tibaná","Turmequé|Turmequé","Úmbita|Úmbita","Viracachá|Viracachá","Garagoa|Garagoa",
		"Macanal|Macanal","Pachavita|Pachavita","San Luis De Gaceno|San Luis De Gaceno","Santa María|Santa María","Boavita|Boavita","Covarachía|Covarachía",
		"La Uvita|La Uvita","San Mateo|San Mateo","Sativanorte|Sativanorte","Sativasur|Sativasur","Soatá|Soatá","Susacón|Susacón",
		"Tipacoque|Tipacoque","Briceño|Briceño","Buenavista|Buenavista","Caldas|Caldas","Chiquinquirá|Chiquinquirá","Coper|Coper",
		"La Victoria|La Victoria","Maripí|Maripí","Muzo|Muzo","Otanche|Otanche","Pauna|Pauna","Quípama|Quípama","Saboyá|Saboyá","San Miguel De Sema|San Miguel De Sema",
		"San Pablo de Borbur|San Pablo de Borbur","Tununguá|Tununguá","Almeida|Almeida","Chivor|Chivor","Guateque|Guateque","Guayatá|Guayatá",
		"La Capilla|La Capilla","Somondoco|Somondoco","Sutatenza|Sutatenza","Tenza|Tenza","Arcabuco|Arcabuco","Chitaraque|Chitaraque",
		"Gachantivá|Gachantivá","Moniquirá|Moniquirá","Ráquira|Ráquira","Sáchica|Sáchica","San José De Pare|San José De Pare","Santa Sofia|Santa Sofia",
		"Santana|Santana","Sutamarchán|Sutamarchán","Tinjacá|Tinjacá","Togüí|Togüí","Villa De Leiva|Villa De Leiva","Aquitania|Aquitania","Cuitíva|Cuitíva",
		"Farabitoba|Farabitoba","Gámeza|Gámeza","Iza|Iza","Mongua|Mongua","Monguí|Monguí","Nobsa|Nobsa","Pesca|Pesca","Sogamoso|Sogamoso","Tibasosa|Tibasosa",
		"Tópaga|Tópaga","Tota|Tota","Belén|Belén","Busbanzá|Busbanzá","Cerinza|Cerinza","Corrales|Corrales","Duitama|Duitama","Floresta|Floresta",
		"Paipa|Paipa","Santa Rosa De Viterbo|Santa Rosa De Viterbo","Tutazá|Tutazá","Betéitiva|Betéitiva","Chita|Chita","Jericó|Jericó","Paz De Río|Paz De Río",
		"Socha|Socha","Socotá|Socotá","Tasco|Tasco","Cubará|Cubará","Puerto Boyacá|Puerto Boyacá"]


	}else if (departamento.value == "Caldas") {
		var optionArray = ["select |- Municipio/Corregimiento -","Filadelfia|Filadelfia","La Merced|La Merced","Marmato|Marmato","Riosucio|Riosucio","Supía|Supía","Manzanares|Manzanares",
		"Marquetalia|Marquetalia","Marulanda|Marulanda","Pensilvania|Pensilvania","Anserma|Anserma","Belalcázar|Belalcázar","Risaralda|Risaralda",
		"San José|San José","Viterbo|Viterbo","Chinchiná|Chinchiná","Manizales|Manizales","Neira|Neira","Palestina|Palestina","Villamaría|Villamaría"
		,"La Dorada|La Dorada","Norcasia|Norcasia","Samaná|Samaná","Victoria|Victoria","Aguadas|Aguadas","Aranzazu|Aranzazu","Pácora|Pácora","Salamina|Salamina"]
	
	}else if (departamento.value == "Caquetá") {
		var optionArray = ["select |- Municipio/Corregimiento -","Albania|Albania","Belén De Los andaquies|Belén De Los andaquies","Cartagena Del Chairá|Cartagena Del Chairá","Curillo|Curillo",
		"El Doncello|El Doncello","El Paujil|El Paujil","Florencia|Florencia","La Montañita|La Montañita","Morelia|Morelia","Puerto Milan|Puerto Milan",
		"Puerto Rico|Puerto Rico","San José Del Fragua|San José Del Fragua","San Vicente Del Caguán|San Vicente Del Caguán","Solano|Solano",
		"Solita|Solita","Valparaíso|Valparaíso"]

	}else if (departamento.value == "Casanare") {
		var optionArray = ["select |- Municipio/Corregimiento -","Aguazul|Aguazul","Chámeza|Chámeza","Hato Corozal|Hato Corozal","La Salina|La Salina","Maní|Maní","Monterrey|Monterrey",
		"Nunchía|Nunchía","Orocué|Orocué","Paz De Ariporo|Paz De Ariporo","Pore|Pore","Recetor|Recetor","Sabanalarga|Sabanalarga","Sácama|Sácama",
		"San luis de Palenque|San luis de Palenque","Támara|Támara","Tauramena|Tauramena","Trinidad|Trinidad","Villanueva|Villanueva","Yopal|Yopal"]

	}else if (departamento.value == "Cauca") {
		var optionArray = ["select |- Municipio/Corregimiento -","Buenos Aires|Buenos Aires","Caloto|Caloto","Corinto|Corinto","Gauchené|Gauchené","Miranda|Miranda","Padilla|Padilla",
		"Puerto Tejada|Puerto Tejada","Santander De Quilichao|Santander De Quilichao","Suaréz|Suaréz","Villa Rica|Villa Rica","Cajibío|Cajibío",
		"El Tambo|El Tambo","La Sierra|La Sierra","Morales|Morales","Piendamó|Piendamó","Popayán|Popayán","Rosas|Rosas","Sotará|Sotará","Timbío|Timbío",
		"Almaguer|Almaguer","Argelia|Argelia","Balboa|Balboa","Bolívar|Bolívar","Florencia|Florencia","La Vega|La Vega","Mercaderes|Mercaderes",
		"Patía|Patía","Piamonte|Piamonte","San Sebastián|San Sebastián","Santa Rosa|Santa Rosa","Sucre|Sucre","Guapí|Guapí","López de Micay|López de Micay",
		"Timbiquí|Timbiquí","Caldono|Caldono","Inzá|Inzá","Jambaló|Jambaló","Páez|Páez","Puracé|Puracé","Silvia|Silvia","Toribío|Toribío","Totoro|Totoro"]

	}else if (departamento.value == "Cesar") {
		var optionArray = ["select |- Municipio/Corregimiento -","Valledupar|Valledupar","Aguachica|Aguachica","Agustín Codazzi|Agustín Codazzi","Bosconia|Bosconia","Chimichagua|Chimichagua",
		"El Copey|El Copey","San Alberto|San Alberto","Curumaní|Curumaní","El Paso|El Paso","La Paz|La Paz","Pueblo Bello|Pueblo Bello","La Jagua De Ibirico|La Jagua De Ibirico",
		"Chiriguaná|Chiriguaná","Astrea|Astrea","San Martín|San Martín","Pelaya|Pelaya","Pilitas|Pilitas","Gamarra|Gamarra",
		"Manaure Balcón Del Cesar|Manaure Balcón Del Cesar","Río De Oro|Río De Oro","Tamalameque|Tamalameque","Becerril|Becerril","San Diego|San Diego",
		"La Gloria|La Gloria","González|González"]

	}else if (departamento.value == "Chocó") {
		var optionArray = ["select |- Municipio/Corregimiento -","Acandí|Acandí","Alto Baudó|Alto Baudó","Atrato|Atrato","Bagadó|Bagadó","Bahía Solano|Bahía Solano","Bajo Baudó|Bajo Baudó",
		"Bojayá|Bojayá","Cértegui|Cértegui","Condoto|Condoto","El Cantón De San Pablo|El Cantón De San Pablo","El Carmen De Atrato|El Carmen De Atrato",
		"El Carmen Del Darién|El Carmen Del Darién","El Litoral De San Juan|El Litoral De San Juan","Itsmina|Itsmina","Juradó|Juradó",
		"Lloró|Lloró","Medio Atrato|Medio Atrato","Medio Baudó|Medio Baudó","Medio San Juan|Medio San Juan","Nóvita|Nóvita","Nuquí|Nuquí",
		"Quibdó|Quibdó","Río Iró|Río Iró","Río Quito|Río Quito","Riosucio|Riosucio","San José Del Palmar|San José Del Palmar","Sipí|Sipí",
		"Unguía|Unguía","Unión Panamericana|Unión Panamericana"]

	}else if (departamento.value == "Córdoba") {
		var optionArray = ["select |- Municipio/Corregimiento -","Ayapel|Ayapel","Buenavista|Buenavista","Canalete|Canalete","Cereté|Cereté","Chimá|Chimá","Chinú|Chinú",
		"Ciénaga De Oro|Ciénaga De Oro","Cotorra|Cotorra","La Apartada|La Apartada","Los Córdobas|Los Córdobas","Momil|Momil","Montelíbano|Montelíbano",
		"Monteria|Monteria","Moñitos|Moñitos","Planeta Rica|Planeta Rica","Pueblo Nuevo|Pueblo Nuevo","Puerto escondido|Puerto escondido",
		"Puerto Libertador|Puerto Libertador","Purísima|Purísima","Sahagún|Sahagún","San Andrés De Sotavento|San Andrés De Sotavento",
		"San Antero|San Antero","San Bernardo Del Viento|San Bernardo Del Viento","San Carlos|San Carlos","San José De Uré|San José De Uré",
		"San Pelayo|San Pelayo","Santa Cruz De lorica|Santa Cruz De lorica","Tierra Alta|Tierra Alta","Tuchín|Tuchín","Valencia|Valencia"]

	}else if (departamento.value == "Cundinamarca") {
		var optionArray = ["select |- Municipio/Corregimiento -","Chocontá|Chocontá","Machetá|Machetá","Manta|Manta","Sesquilé|Sesquilé","Suesca|Suesca","Tibirita|Tibirita",
		"Villapinzón|Villapinzón","Agua De Dios|Agua De Dios","Girardot|Girardot","Guataquí|Guataquí","Jerusalén|Jerusalén","Nariño|Nariño",
		"Nilo|Nilo","Ricaurte|Ricaurte","Tocaima|Tocaima","Caparrapí|Caparrapí","Guaduas|Guaduas","Puerto Salgar|Puerto Salgar","Albán|Albán",
		"La Peña|La Peña","La Vega|La Vega","Nimaima|Nimaima","Nocaima|Nocaima","Quebradanegra|Quebradanegra","San Francisco|San Francisco",
		"Sasaima|Sasaima","Supatá|Supatá","Útica|Útica","Vergara|Vergara","Villeta|Villeta","Gachalá|Gachalá","Gachetá|Gachetá","Gama|Gama",
		"Guasca|Guasca","Guatavita|Guatavita","Junín|Junín","La Calera|La Calera","Ubalá|Ubalá","Beltrán|Beltrán","Bituima|Bituima","Chaguaní|Chaguaní",
		"Guayabal De Síquima|Guayabal De Síquima","Pulí|Pulí","San Juan De Ríoseco|San Juan De Ríoseco","Vianí|Vianí","Medina|Medina","Paratebueno|Paratebueno",
		"Cáqueza|Cáqueza","Chipaque|Chipaque","Choachí|Choachí","Fómeque|Fómeque","Fosca|Fosca","Gayabetal|Gayabetal","Gutiérrez|Gutiérrez",
		"Quetame|Quetame","Ubaque|Ubaque","Une|Une","El Peñón|El Peñón","La Palma|La Palma","Pacho|Pacho","Paime|Paime","San Cayetano|San Cayetano",
		"Topaipí|Topaipí","Villagómez|Villagómez","Yacopí|Yacopí","Cajicá|Cajicá","Chía|Chía","Cogua|Cogua","Gachancipá|Gachancipá",
		"Nemocón|Nemocón","Sopo|Sopo","Tabio|Tabio","Tocancipá|Tocancipá","Zipaquirá|Zipaquirá","Bojacá|Bojacá","Cota|Cota","El Rosal|El Rosal",
		"Facatativá|Facatativá","Funza|Funza","Madrid|Madrid","Mosquera|Mosquera","Subachoque|Subachoque","Zipacón|Zipacón","Sibaté|Sibaté",
		"Soacha|Soacha","Arbeláez|Arbeláez","Cabrera|Cabrera","Fusagasugá|Fusagasugá","Granada|Granada","Pandi|Pandi","Pasca|Pasca","San Bernardo|San Bernardo",
		"Silvania|Silvania","Tibacuy|Tibacuy","Venecia|Venecia","Anapioma|Anapioma","Anolaima|Anolaima","Apulo|Apulo","Cachipay|Cachipay",
		"El Colegio|El Colegio","La Mesa|La Mesa","Quipile|Quipile","San Antonio Del Tequendama|San Antonio Del Tequendama","Tena|Tena",
		"Viotá|Viotá","Carmen De Carupa|Carmen De Carupa","Cucunubá|Cucunubá","Fúquene|Fúquene","Guachetá|Guachetá","Lenguazaque|Lenguazaque",
		"Simijaca|Simijaca","Susa|Susa","Sutatausa|Sutatausa","Tausa|Tausa","Ubaté|Ubaté"]

	}else if (departamento.value == "Guainía") {
		var optionArray = ["select |- Municipio/Corregimiento -","Barrancominas|Barrancominas","Cacahual|Cacahual","Inírida|Inírida","La Guadalupe|La Guadalupe","Mapiripana|Mapiripana",
		"Morichal Nuevo|Morichal Nuevo","Pana Pana|Pana Pana","Puerto Colombia|Puerto Colombia","San Felipe|San Felipe"]

	}else if (departamento.value == "Guaviare") {
		var optionArray = ["select |- Municipio/Corregimiento -","Calamar|Calamar","El Retorno|El Retorno","Miraflores|Miraflores","San José Del Guaviare|San José Del Guaviare"]

	}else if (departamento.value == "Huila") {
		var optionArray = ["select |- Municipio/Corregimiento -","Aipe|Aipe","Algeciras|Algeciras","Baraya|Baraya","Campoalegre|Campoalegre","Colombia|Colombia","Hobo|Hobo",
		"Íquira|Íquira","Neiva|Neiva","Palermo|Palermo","Rivera|Rivera","Santa María|Santa María","Tello|Tello","Teruel|Teruel","Villavieja|Villavieja",
		"Yaguará|Yaguará","Agrado|Agrado","Altamira|Altamira","Garzón|Garzón","Gigante|Gigante","Guadalupe|Guadalupe","Pital|Pital","Suaza|Suaza",
		"Tarqui|Tarqui","La Argentina|La Argentina","La Plata|La Plata","Nátaga|Nátaga","Paicol|Paicol","Tesalia|Tesalia","Acevedo|Acevedo",
		"Elías|Elías","Isnos|Isnos","Oporapa|Oporapa","Palestina|Palestina","Pitalito|Pitalito","Saladoblanco|Saladoblanco","San Agustín|San Agustín",
		"Timaná|Timaná"]

	}else if (departamento.value == "La Guajira") {
		var optionArray = ["select |- Municipio/Corregimiento -","Albania|Albania","Barrancas|Barrancas","Dibulla|Dibulla","Distracción|Distracción","El Molino|El Molino",
		"Fonseca|Fonseca","Hatonuevo|Hatonuevo","La Jagua Del Pilar|La Jagua Del Pilar","Maicao|Maicao","Manaure|Manaure","Rioacha|Rioacha",
		"San Juan Del Cesar|San Juan Del Cesar","Uribia|Uribia","Urumita|Urumita","Villanueva|Villanueva"]

	}else if (departamento.value == "Magdalena") {
		var optionArray = ["select |- Municipio/Corregimiento -","Algarrobo|Algarrobo","Aracataca|Aracataca","Ariguaní|Ariguaní","Cerro De San Antonio|Cerro De San Antonio",
		"Chibolo|Chibolo","Ciénaga|Ciénaga","Concordia|Concordia","El Banco|El Banco","El Piñón|El Piñón","El Retén|El Retén","Fundación|Fundación",
		"Guamal|Guamal","Nueva Granada|Nueva Granada","Pedraza|Pedraza","Pijiño del Carmen|Pijiño del Carmen","Pivijay|Pivijay","Plato|Plato",
		"Pueblo Viejo|Pueblo Viejo","Remolino|Remolino","Sabanas De San Ángel|Sabanas De San Ángel","Salamina|Salamina","San Sebastián De Buenavista|San Sebastián De Buenavista",
		"Santa Ana|Santa Ana","Santa Bárbara De Pinto|Santa Bárbara De Pinto","Santa Marta|Santa Marta","San Zenón|San Zenón","Sitionuevo|Sitionuevo",
		"Tenerife|Tenerife","Zapayán|Zapayán","Zona Bananera|Zona Bananera"]

	}else if (departamento.value == "Meta") {
		var optionArray = ["select |- Municipio/Corregimiento -","Acacías|Acacías","Barranca De Úpia|Barranca De Úpia","Cabuyaro|Cabuyaro","Castilla La Nueva|Castilla La Nueva",
		"Cubarral|Cubarral","Cumaral|Cumaral","El Calvario|El Calvario","El Castillo|El Castillo","El Dorado|El Dorado","Fuente De Oro|Fuente De Oro",
		"Granada|Granada","Guamal|Guamal","La Macarena|La Macarena","La Uribe|La Uribe","Lejanías|Lejanías","Mapiripán|Mapiripán","Mesetas|Mesetas",
		"Puerto Concordia|Puerto Concordia","Puerto Gaitán|Puerto Gaitán","Puerto Lleras|Puerto Lleras","Puerto López|Puerto López","Puerto Rico|Puerto Rico",
		"Restrepo|Restrepo","San Carlos De Guaroa|San Carlos De Guaroa","San Juan De Arama|San Juan De Arama","San Jacinto|San Jacinto",
		"San Martín|San Martín","Villavicencio|Villavicencio","Vista Hermosa|Vista Hermosa"]

	}else if (departamento.value == "Nariño") {
		var optionArray = ["select |- Municipio/Corregimiento -","Barbacoas|Barbacoas","El Charco|El Charco","Francisco Pizarro|Francisco Pizarro","La Tola|La Tola","Magüí Payán|Magüí Payán",
		"Mosquera|Mosquera","Olaya Herrera|Olaya Herrera","Roberto Payán|Roberto Payán","Santa Bárbara|Santa Bárbara","Tumaco|Tumaco","Aldana|Aldana","Contadero|Contadero","Córdoba|Córdoba",
		"Cuaspud|Cuaspud","Cumbal|Cumbal","Funes|Funes","Guachucal|Guachucal","Gualmatán|Gualmatán","Iles|Iles","Ipiales|Ipiales","Potosí|Potosí","Puerres|Puerres","Pupiales|Pupiales",
		"Albán|Albán","Arboleda|Arboleda","Belén|Belén","Colón|Colón","El Rosario|El Rosario","El Tablón de Gómez|El Tablón de Gómez","La Cruz|La Cruz","La Unión|La Unión","Leiva|Leiva",
		"Policarpa|Policarpa","San Bernardo|San Bernardo","San Lorenzo|San Lorenzo","San Pablo|San Pablo","San Pedro de Cartago|San Pedro de Cartago","Taminango|Taminango","Buesaco|Buesaco",
		"Chachagüí|Chachagüí","Consacá|Consacá","El Peñol|El Peñol","El Tambo|El Tambo","La Florida|La Florida","Nariño|Nariño","Pasto|Pasto","Sandoná|Sandoná","Tangua|Tangua","Yacuanquer|Yacuanquer",
		"Ancuya|Ancuya","Cumbitara|Cumbitara","Guaitarilla|Guaitarilla","Imués|Imués","La Llanada|La Llanada","Linares|Linares","Los Andes|Los Andes","Mallama|Mallama","Ospina|Ospina","Providencia|Providencia",
		"Ricaurte|Ricaurte","Samaniego|Samaniego","Santacruz|Santacruz","Sapuyes|Sapuyes","Túquerres|Túquerres"]

	}else if (departamento.value == "Norte De Santander") {
		var optionArray = ["select |- Municipio/Corregimiento -","Arboledas|Arboledas","Cucutilla|Cucutilla","Gramalote|Gramalote","Lourdes|Lourdes","Salazar de las Palmas|Salazar de las Palmas","Santiago|Santiago",
		"Villa Caro|Villa Caro","Cúcuta|Cúcuta","El Zulia|El Zulia","Los Patios|Los Patios","Puerto Santander|Puerto Santander","San Cayetano|San Cayetano","Villa Del Rosario|Villa Del Rosario","Bucarasica|Bucarasica",
		"El Tarra|El Tarra","Sardinata|Sardinata","Tibú|Tibú","Ábrego|Ábrego","Cháchira|Cháchira","Convención|Convención","El Carmen|El Carmen","Hacari|Hacari","La Esperanza|La Esperanza","La Playa De Belén|La Playa De Belén",
		"Ocaña|Ocaña","San Calixto|San Calixto","Teorama|Teorama","Cácota|Cácota","Chitagá|Chitagá","Mutiscua|Mutiscua","Pamplona|Pamplona","Pamplonita|Pamplonita","Santo Domingo de Silos|Santo Domingo de Silos",
		"Bochalema|Bochalema","Chinácota|Chinácota","Durania|Durania","Herrán|Herrán","Labateca|Labateca","Ragonvalia|Ragonvalia","Toledo|Toledo"]

	}else if (departamento.value == "Putumayo") {
		var optionArray = ["select |- Municipio/Corregimiento -","Colón|Colón","Mocoa|Mocoa","Orito|Orito","Puerto Asís|Puerto Asís","Puerto Caicedo|Puerto Caicedo","Puerto Guzmán|Puerto Guzmán","Puerto Leguízamo|Puerto Leguízamo",
		"San Francisco|San Francisco","San Miguel|San Miguel","Santiago|Santiago","Sibundoy|Sibundoy","Valle del Guamuez|Valle del Guamuez","Villagarzón|Villagarzón"]

	}else if (departamento.value == "Quindío") {
		var optionArray = ["select |- Municipio/Corregimiento -","Armenia|Armenia","Buenavista|Buenavista","Calarcá|Calarcá","Circasia|Circasia","Córdoba|Córdoba","Filandia|Filandia","Génova|Génova","La Tebaida|La Tebaida",
		"Montenegro|Montenegro","Pijao|Pijao","Quimbaya|Quimbaya","Salento|Salento"]

	}else if (departamento.value == "Risaralda") {
		var optionArray = ["select |- Municipio/Corregimiento -","Apía|Apía","Balboa|Balboa","Belén de Umbría|Belén de Umbría","Dosquebradas|Dosquebradas","Guática|Guática","La Celia|La Celia","La Virginia|La Virginia",
		"Marsella|Marsella","Mistrató|Mistrató","Pereira|Pereira","Pueblo Rico|Pueblo Rico","Quinchía|Quinchía","Santa Rosa Del Cabal|Santa Rosa Del Cabal","Santuario|Santuario"]

	}else if (departamento.value == "San Adrés y Providencia") {
		var optionArray = ["select |- Municipio/Corregimiento -","San Adrés y Providencia|San Adrés y Providencia"]

	}else if (departamento.value == "Santander") {
		var optionArray = ["select |- Municipio/Corregimiento -","Aguada|Aguada","Albania|Albania","Aratoca|Aratoca","Barbosa|Barbosa","Barichara|Barichara","Barrancabermeja|Barrancabermeja","Betulia|Betulia",
		"Bolívar|Bolívar","Bucaramanga|Bucaramanga","Cabrera|Cabrera","California|California","Capitanejo|Capitanejo","Carcasí|Carcasí","Cepitá|Cepitá","Cerrito|Cerrito","Charalá|Charalá","Charta|Charta",
		"Chima|Chima","Chipatá|Chipatá","Cimitarra|Cimitarra","Concepción|Concepción","Confines|Confines","Contratación|Contratación","Coromoro|Coromoro","Curití|Curití","El Carmen de Chucurí|El Carmen de Chucurí",
		"El Guacamayo|El Guacamayo","El Peñón|El Peñón","El Playón|El Playón","Encino|Encino","Enciso|Enciso","Florián|Florián","Floridablanca|Floridablanca","Galán|Galán","Gámbita|Gámbita","Girón|Girón",
		"Guaca|Guaca","Guadalupe|Guadalupe","Guapotá|Guapotá","Guavatá|Guavatá","Güepsa|Güepsa","Hato|Hato","Jesús María|Jesús María","Jordán|Jordán","La Belleza|La Belleza","La Paz|La Paz","Landázuri|Landázuri",
		"Lebrija|Lebrija","Los Santos|Los Santos","Macaravita|Macaravita","Málaga|Málaga","Matanza|Matanza","Mogotes|Mogotes","Molagavita|Molagavita","Ocamonte|Ocamonte","Oiba|Oiba","Onzaga|Onzaga","Palmar|Palmar",
		"Palmas Del Socorro|Palmas Del Socorro","Páramo|Páramo","Piedecuesta|Piedecuesta","Pinchote|Pinchote","Puente Nacional|Puente Nacional","Pueto Parra|Pueto Parra","Puerto Wilches|Puerto Wilches",
		"Rionegro|Rionegro","Sabana De Torres|Sabana De Torres","San Andrés|San Andrés","San Benito|San Benito","San Gil|San Gil","San Joaquín|San Joaquín","San José de Miranda|San José de Miranda","San Miguel|San Miguel",
		"San Vicente de Chucurí|San Vicente de Chucurí","Santa Bárbara|Santa Bárbara","Santa Helena del Opón|Santa Helena del Opón","Simacota|Simacota","Socorro|Socorro","Suaita|Suaita","Sucre|Sucre",
		"Suratá|Suratá","Tona|Tona","Valle De San José|Valle De San José","Vélez|Vélez","Vetas|Vetas","Villanueva|Villanueva","Zapatoca|Zapatoca"]

	}else if (departamento.value == "Sucre") {
		var optionArray = ["select |- Municipio/Corregimiento -","Guaranda|Guaranda","Majagual|Majagual","Sucre|Sucre","Chalán|Chalán","Colosó|Colosó","Morroa|Morroa","Ovejas|Ovejas","Sincelejo|Sincelejo","Coveñas|Coveñas",
		"Palmito|Palmito","San Onofre|San Onofre","Santiago De Tolú|Santiago De Tolú","Tolúviejo|Tolúviejo","Buenavista|Buenavista","Corozal|Corozal","El Roble|El Roble","Galeras|Galeras","Los Palmitos|Los Palmitos",
		"Sampués|Sampués","San Juan de Betulia|San Juan de Betulia","San Pedro|San Pedro","Sincé|Sincé","Caimito|Caimito","La Unión|La Unión","San Benito Abad|San Benito Abad","San Marcos|San Marcos"]

	}else if (departamento.value == "Tolima") {
		var optionArray = ["select |- Municipio/Corregimiento -","Alvarado|Alvarado","Anzoátegui|Anzoátegui","Cajamarca|Cajamarca","Coello|Coello","Espinal|Espinal","Flandes|Flandes","Ibagué|Ibagué","Piedras|Piedras",
		"Rovira|Rovira","San Luis|San Luis","Valle De San Juan|Valle De San Juan","Casabianca|Casabianca","Herveo|Herveo","Lérida|Lérida","Líbano|Líbano","Murillo|Murillo","Santa Isabel|Santa Isabel","Venadillo|Venadillo",
		"Villahermosa|Villahermosa","Ambalema|Ambalema","Armero|Armero","Falan","Fresno|Fresno","Honda|Honda","Mariquita|Mariquita","Palocabildo|Palocabildo","Carmen De Apicalá|Carmen De Apicalá","Cunday|Cunday","Icononzo|Icononzo",
		"Melgar|Melgar","Villarrica|Villarrica","Ataco|Ataco","Chaparral|Chaparral","Coyaima|Coyaima","Natagaima|Natagaima","Ortega|Ortega","Planadas|Planadas","Rioblanco|Rioblanco","Roncesvalles|Roncesvalles","San Antonio|San Antonio",
		"Alpajurra|Alpajurra","Dolores|Dolores","Guamo|Guamo","Prado|Prado","Purificación|Purificación","Saldaña|Saldaña","Suárez|Suárez"]

	}else if (departamento.value == "Valle Del Cauca") {
		var optionArray = ["select |- Municipio/Corregimiento -","Alcalá|Alcalá","Andalucía|Andalucía","Ansermanuevo|Ansermanuevo","Argelia|Argelia","Boívar|Boívar","Buenaventura|Buenaventura","Buga|Buga","Bugalagrande|Bugalagrande",
		"Caicedonia|Caicedonia","Cali|Cali","Calima - El Dairén|Calima - El Dairén","Candelaria|Candelaria","Cartago|Cartago","Dagua|Dagua","El Águila|El Águila","El Cairo|El Cairo","El Cerrito|El Cerrito","El Dovio|El Dovio","Florida|Florida",
		"Ginebra|Ginebra","Guacarí|Guacarí","Jamundí|Jamundí","La Cumbre|La Cumbre","La Unión|La Unión","La Victoria|La Victoria","Obando|Obando","Palmira|Palmira","Pradera|Pradera","Restrepo|Restrepo","Riofrío|Riofrío","Roldanillo|Roldanillo",
		"San Pedro|San Pedro","Sevilla|Sevilla","Toro|Toro","Trujillo|Trujillo","Tuluá|Tuluá","Ulloa|Ulloa","Versalles|Versalles","Vijes|Vijes","Yotoco|Yotoco","Yumbo|Yumbo","Zarzal|Zarzal"]
	
	}else if (departamento.value == "Vaupés") {
		var optionArray = ["select |- Municipio/Corregimiento -","Carurú|Carurú","Mitú|Mitú","Pacoa|Pacoa","Papunaua|Papunaua","Taraira|Taraira","Yavaraté|Yavaraté"]

	}else if (departamento.value == "Vichada") {
		var optionArray = ["select |- Municipio/Corregimiento -","Cumaribo|Cumaribo","La Primavera|La Primavera","Puerto Carreño|Puerto Carreño","Santa Rosalia|Santa Rosalia"]

	}

	for(var option in optionArray){
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		municipio.options.add(newOption);
	}
//Se le debe dar un id al objeto donde se planea implementar el script
//sSe usara la siguiente declaracion: onchange="nombre del function(this.id,'nombre del id donde se va a desplegar el script')"
	
}


