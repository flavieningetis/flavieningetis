function addition(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value;
    var p =document.getElementById("t7").value;
    var c = Number(a)+Number(b)+Number(p);

    t3.value= c;
}
function soustraction(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value;
    var p =document.getElementById("t7").value;
    var c = Number(a)-Number(b)-Number(p);

    t3.value= c;
}
function Multiplication(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value;
    var p =document.getElementById("t7").value;
    var c = Number(a)*Number(b)*Number(p);

    t3.value= c;
}
function Division(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value;
    var p =document.getElementById("t7").value;
    var c = Number(a)/Number(b)/Number(p);

    t3.value= c;
}
function permute(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value; 
    t1.value= b;
    t2.value= a;
}
function parite(){
    var a =document.getElementById("t1").value;
    var b =document.getElementById("t2").value;
    var p =document.getElementById("t7").value;
    var c = Number(a)+Number(b)+Number(p);
    var d = Number(c)%"2";

    t4.value= d;

    if (d== 1)
    t4.value = "Nombre IMPAIR";
    else {
     t4.value = "NOMBRE PAIR";
    }

}