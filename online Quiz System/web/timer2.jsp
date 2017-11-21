<%-- 
    Document   : timer2
    Created on : Jun 28, 2017, 1:14:43 PM
    Author     : Rishabh Sachan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JavaScript timer</h1>
        <div style="font-weight: bold" id="quiz-time-left"></div>
        <script type="text/javascript">
            var total_seconds=60*3;
            var c_minutes = parseInt(total_seconds/60);
            var c_seconds = parseInt(total_seconds%60);
            function CheckTime(){
                document.getElementById("quiz-time-left").innerHTML
                        ='Time Left: ' + c_minutes + 'minutes '+ c_seconds+' seconds';
                if(total_seconds<=0){
                    setTimeout('document.quiz.submit()',1);
                }else{
                    total_seconds= total_seconds-1;
                    c_minutes = parseInt(total_seconds/60);
                    c_seconds = parseInt(total_seconds%60);
                    setTimeout("checkTime()",1000);
                }
    
    }setTimeout("CheckTime()",1000);
    
            
        </script>
        
        <form method="post" name="quiz" action="#"></form>
    </body>
</html>
