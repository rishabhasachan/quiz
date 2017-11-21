/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
window.onload=counter;
function counter()
{
var seconds;
var minutes;
var time = 120;
countDown();
function countDown()
{
minutes = Math.floor(time  / 60);
seconds = Math.floor(time % 60);
document.getElementById("remain").innerHTML=minutes + "m :" + seconds + "s ";
if(time>0)
{
time=time - 1;
setTimeout(countDown,1000);
}
if(time === 0)
{
//document.getElementById('form1').submit();
document.getElementById('btnauto').click();
}
}
}

