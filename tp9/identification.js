function login(){
    var login = document.getElementById("t1").value;
    var password = document.getElementById("h1").value;
    if(login == "admin" && password == "admin")
    {
        window.location.href='yes.html'
    } 
    else {
        window.location.href='non.html'
}
}

function retour(){
    window.location.href='../tp9.html'
}