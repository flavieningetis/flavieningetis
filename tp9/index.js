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
document.write(mot.toUpperCase()+"<br>");
document.write(mot.toLowerCase()+"<br>");
document.write("La chaîne contient "+ mot.length + 'caractères'+"<br>");
document.write("La première lettre est "+ mot.substr(0,1) + '<br>');
document.write("La derniere lettre est "+ mot.substr(length-1,1) + '<br>');
}
function swich() {
    var color = prompt("Entrez une couleur :");
    switch (color){
    case "rouge":
        document.body.style.background = "red";
        break;
    case "bleu":
        document.body.style.background = "blue";
        break;
    case "jaune":
        document.body.style.background = "yellow";
        break;
    case "vert":
        document.body.style.background = "green";
        break;

        default:
            alert("couleur non comprise, Veuillez Choisir parmis: bleu, rouge, jaune, vert");
    }
}
function bonus() {
    var totalf = 0
    var total = ""
    var c = ""
    do{
        var article = prompt("Votre article")
        var prix = prompt("Le prix")
        var quantité = prompt("La quantité")

        alert('Vos'+article+'couterons'+prix * quantité+' €')
        total = Number(prix)*Number(quantité) 
        totalf += total 
        c += ("Article : " +article+" <br> PRIX : "+prix +"€"+ " <br> Quantité : "+quantité+ " <br> Total : "+total+"€"+"<br><br><br>")
        alert('Vos articles additionnés courterons ' + totalf + "€")

        next = prompt("Voulez vous continuer (OUI/STOP) ?")
    }
    while(next != "STOP");
    document.write(c);
    document.write(" TOTAL FINAL : "+totalf+"€");


}