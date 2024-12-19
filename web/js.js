runOnce = false;

function showTab(tabNo){
 console.log(tabNo);

 if(runOnce == true){
  document.getElementsByClassName("select")[0].classList.remove("select");
 }else{
  document.getElementsByClassName("default-ui")[0].classList.add("hide");
 }
 document.getElementById("tab-"+ tabNo).classList.add("select");

 if(runOnce==true){
  document.getElementsByClassName("show")[0].classList.add("hide");
  document.getElementsByClassName("show")[0].classList.remove("show");
 }
 document.getElementById("typ-"+tabNo).classList.remove("hide");
 document.getElementById("typ-"+tabNo).classList.add("show");

 runOnce = true;

}


runOnce = false;

function showdetalis(detNo){
 console.log(detNo);

 if(runOnce == true){
  document.getElementsByClassName("select")[0].classList.remove("select");
 }else{
  document.getElementsByClassName("default-ui")[0].classList.add("hide");
 }
 document.getElementById("dets-"+ detNo).classList.add("select");

 if(runOnce==true){
  document.getElementsByClassName("show")[0].classList.add("hide");
  document.getElementsByClassName("show")[0].classList.remove("show");
 }
 document.getElementById("dets-"+detNo).classList.remove("hide");
 document.getElementById("dets-"+detNo).classList.add("show");




 runOnce = true;

}





