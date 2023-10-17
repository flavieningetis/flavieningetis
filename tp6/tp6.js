function calcul_moyenne(){
    var n1= prompt("Donner la première note");
    var n2= prompt ("Donner la deuxième note");
    var n3= prompt ("Donner la troisième note");

    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("Voici la somme: "+somme+"<hr>");
    var moyenne=somme/3;

    document.write("Voici la moyenne: "+moyenne+"<hr>");


    if(moyenne<10)
    document.write("Vous etes redoublant");
    else
    if(moyenne<14)
    document.write("Admis Passable");
    else
    document.write("Admis Bien");
}
function test_age(){
    var age= prompt("quel age avez vous?");

    if (age>18) {
    document.write("<h1>Vous etes Majeur</h1>");
    document.bgColor="green"}
    else {
    document.write("<h1>Vous etes Mineur</h1>");
    document.bgColor="red"
    }
}
function simple_affichage() {
var prenom = prompt ("Quel est votre prénom");
var nom = prompt ("Quel est votre nom");

document.write("Bonjour  "+prenom+"   "+nom);
}
function test_couleur(){
    let c = prompt("Donnez une couleur");
    if(c == "rouge" || c == "ROUGE") {
        document.body.style.background = "red"
    }

    else if (c == "bleu" || c == "BLEU"){
        document.body.style.background = "blue";
    }
    else{
        document.write("Couleur non Comprise");
    }

}