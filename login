<!DOCTYPE html>
<html>
<head>
    <meta charset = "utf-8">
    <title>LoginPage</title>
    
 <h1 style="text-align: center; color: cadetblue;font-size: 50px; padding-top: 30px;">Welcome to the login page</h1>

<!--link rel="stylesheet" style type = "text/css" href="CssEx.css">  -->  
    <style>

       /*using (CSS class here to control everything in thr body )*/
   .BodyChange{
    background-color: #1e1c20;
    background-attachment: fixed;
    background-image: url("backGround.jpg");
    background-repeat: no-repeat;
    background-size:cover;
    text-align: center; 
    background-attachment: fixed;
   
  }
 /*using (CSS IDs here to control the "logIn" )*/
  #h1{ 
    align-content: center;
    font-size: 65px;
    color: rgb(85, 85, 85);
    font-weight: bold;
  }

  /*using (CSS class here to control the "form" )*/
  .Form
  {
  padding-top: 80px;
  font-size: 15px;
  color: rgb(253, 253, 253);
  
}  

    </style>
    </head>
    
 <body  class="BodyChange">
     
        
    <form id="Main" class="Form" method="post">
     <h1 id="h1">Login </h1>
     <input id="userN" style="width: 250px;height: 25px;background-color:rgb(219, 219, 219);" type="text"
     name="userN" placeholder="Username" required="req" /><br><br>
     <input id="userP" style="width: 250px;height: 25px; background-color:rgb(219, 219, 219);" type ="password" 
     name= "userP" placeholder="Password" required="req" /><br><br>
      <button  style="width: 100px;height: 30px; background-color: rgb(85, 85, 85);;color: beige; font-weight: bold; font-size: 15px;" 
       onclick="CheckLogIn()" type="submit" >Let me in</button>
    </form>  

 
     
  
  <script>
     var i=0;
     var usernames=[];
     var passwords=[];
     var space="";
     flag=false;
     
     function CheckLogIn()
     {
       var name =document.getElementById("userN").value;
       var pass=document.getElementById("userP").value;

       var format = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;
       
//checking if the password has any special character by checking the "format" string which has all the specai characters. /\d/ checking if it contains any integer 
        if(format.test(pass) && /\d/.test(pass) )
        {
          usernames[i]=name;
          passwords[i]=pass;
          //creating a content page if the case success.     
        document.writeln("<p style='color:yellow;background-color:black;padding:30px; font-size:75px; font-weight: bold;text-align: center;'>Successful Log In </p>"
        +space+"<p style= 'color:blue;padding-top:30px; font-size:35px; font-weight:bold;text-align: center;'>Hi "
        +usernames[i]+" Welcome to our page.</p>" 
        +space+"<p style= 'color:green;text-align: center;font-size:35px; font-weight:bold;'> You have logged in successfully.</p>");
               
          i++;     
        }
        //give an error message as an alert otherwise
        else
        {
          alert("Access Denied!!\nEnsure that you have at least a special character and a number.");
        }   

     }
           </script>
    </body>
</html>
