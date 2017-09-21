function departament(d1,m2){
    var d1 = document.getElementById(d1);
    var m2 = document,getElementById(m2);
    
    m2.innerHTML ="";
    
    if(d1.value === "guajira"){
        var optionArray = ["|","riohacha|Riohacha","albania|Albania","barrancas|Barrancas","dibulla|Dibulla","distraccion|Distracción","molino|El Molino","fonseca|Fonseca","hato|Hatonuevo","jaguar|La Jaguar del Pilar","maicao|Maicao","manaure|Manaure","juanc|San Juan del César","uribia|Uribia","urumita|Urumita","villanueva|Villanueva","|","mor|Morichal","bar|Barbacoas","cama|Camarones","mat|Matitas","mon|Monguí","tama|Tamarrazón","cuestecita","los remedios"];
    }else if(d1.value === "atlantico"){
        var optionArray = ["|"];
    }
    
    for(var option in optionArray){
        var pair = optionArray[option].split("|");
        var newOption = document.createElement("option");
        newOption.value = pair[0];
        newOption.innerHTML = pair[1];
        m2.options.add(newOption);
    }
}