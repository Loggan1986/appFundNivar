// Aqui el script para la función del tipo de programa...

function populate(t1,n2) {
	var t1 = document.getElementById(t1);
	var n2 = document.getElementById(n2);

	n2.innerHTML ="";

	if (t1.value == "TIT") {
		var optionArray = ["|","progsof|Programación de Software","contab|Contabiliación","asisad|Asistencia Administrativa","mantcomp|Mantenimiento de Computadoras"]
	} else if (t1.value == "COR") {
		var optionArray = ["|","repos|Reposteria","dibtec|Dibujo Técnico"]
	} else if (t1.value == "FLA") {
		var optionArray = ["|","word|Word","power|Power Point"]
	} else if (t1.value == "OTR") {
                var option = ["|"]
	} 

	for(var option in optionArray){
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		n2.options.add(newOption);
	}
}
