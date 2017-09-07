
function populate(d3,m4){
    var d3 = document.getElementById(d3);
    var m4 = document.getElementById(m4);
    
    m4.innerHTML ="";
    
    if(d3.value == "GUAJIRA"){
        var optionArray = ["|","alta|Alta Guajira"]
    }
    
    for(var option in optionArray){
        var pair = optionArray[option].split("|");
        var newOption = document.createElement("option");
        newOption.value = pair[0];
        newOption.innerHTML = pair[1];
        m4.options.add(newOption);
    }
}


