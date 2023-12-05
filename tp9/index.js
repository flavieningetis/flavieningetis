function affichagetab2() {
    document.write('<center><table border=2px width=30% height=500px bgcolor=lightgrey>');
    var nombre= prompt("donnez le nombre de lignes");
    for (var i = 0; i<=5; i++) {
        document.write('<tr>')
        
    }
    for (var b = 0; b<=nombre; b++) {
    document.write('<tr><td>'+b+'</td></tr>');
    }
    document.write('</table></center>');

}
function affichagetab() {
    document.write('<center><table border=2px width=30% height=500px bgcolor=lightgrey>');
    for (var i = 0; i<=5; i++) {
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>');
    }
    document.write('</table></center>');

}
function seconnecter() {
    var login= prompt("Donner votre nom d'utilisateur");
    var password= prompt("Donner votre mot de passe")
    if (login=="admin" && password =="admin"){
    document.write("bienvenue  :" +  login)}
    else{
        document.write("accès refusé");
    }

}

function seconnecter2() {
    window.location.href='identification.html'

}
function seconnecter3() {
    var i = 2;
    do {
var login= prompt("Donner votre nom d'utilisateur");
var password= prompt("Donner votre mot de passe")
if (login=="admin" && password =="admin"){
    document.write("Bienvenue"+login);
}
else
    alert("Accès refusé, il vous reste " + i + " essais restants");
    i=i-1;
}while(i>-1);

if (i==-1)
alert("Délai Dépassé");
    }


function cdc(){
var mot=prompt('Donner un mot');
var e = "e"
if(mot.includes(e))
alert("e detecté")
else {
    alert("pas de e")
}
}
function swich() {
    var x = Number(prompt("entrer un nombre"))
    if(x>=20){
    document.write("a la folie")
    }
    else if (x<10)
    document.write("un peu")
else if (x==10)
document.write("passionement")
}
function bonus() {
    do {
    var nomarticle = prompt("Nom de votre article");
    var prixarticle = prompt("Prix de votre article");
    var quantitearticle = prompt("Quantité d'article");
    var somme = prixarticle*quantitearticle;  
    var total =""
    total += (nomarticle+"<br>"+prixarticle+"<br>"+quantitéarticle+"<br><br>") ;
    var s = prompt("Continuer ? (y/n)")
}

        while (s=="y") {

        document.write(nomarticle+"<br>");
        document.write(prixarticle+"€<br>");
        document.write (quantitearticle+"<br>");
        document.write(somme+"€<br>");
        }
    }


