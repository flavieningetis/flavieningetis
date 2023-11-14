function seconnecter3(){
    var login = document.getElementById("t1").value;
    var password = document.getElementById("t2").value;
    if(login == "admin" && password == "admin")
    {
        window.location.href='ok.html'
    } 
    else {
        window.location.href='lose.html'
}
}

function retour(){
    window.location.href='../tp9.html'
}