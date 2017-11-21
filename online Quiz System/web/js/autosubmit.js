/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



  
window.onload=counter;
function counter()
{
var minutes;
var seconds = 120;
countDown();
function countDown()
{
minutes = Math.floor(seconds  / 60);
seconds = Math.floor(seconds % 60);
document.getElementById("remain").innerHTML=minutes + "m :" + seconds + "s ";
if(seconds>0)
{
seconds=seconds - 1;
setTimeout(countDown,1000);
}
if(seconds === 0)
{
//document.getElementById('form1').submit();
document.getElementById('btnauto').click();
}

}
}

