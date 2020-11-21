function changeText(id){
    id.innerHTML = "Ou quase isso!";
}

function changeColor1(n){
    document.getElementById(n).style.color="#5cb85c ";
}
function changeColor2(n){
    document.getElementById(n).style.color="#d9534f ";
}
function changeColor3(n){
    document.getElementById(n).style.color="#292b2c ";
}

function hide(id_song){
	document.getElementById(id_song).style.visibility = "hidden";
}

function unhide(id_song){
	document.getElementById(id_song).style.visibility = "visible";
}