<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Predict_Employee_Salary.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
      crossorigin="anonymous"
    />
    <title></title>
</head>
    <script
    src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"
  ></script>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
    crossorigin="anonymous"
  ></script>
<body>

    <form id="form1" runat="server">
     
         <nav class="navbar navbar-expand-lg navbar-light bg-light">

                <p class="navbar-brand" >
                    Employee Salary based on Experience</p>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav ml-auto" >
                        <li class="nav-item ">
                            <p class="menu_active" exact className="nav-link" >Machin Learning  + Python + Node + Asp.Net <span class="sr-only">(current)</span></p>
                        </li>


                    </ul>
                </div>
            </nav>
         <div class="container">
            
            <center>
                <br />
                <br />
                <div className="card w-100" >
                    <div class="card-header text-black">
                        <strong>Counting Salary Based on Experience <span id="inner" style="color:red"> </span> </strong>
                    </div>
                    <br />
                    <br />
                    <div className="card-body">


                        <div class="form-group" >

                            

                     <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter Your Experience" maxlength="4"
                                
                                 />   <br />
                        <button type="button" class="btn btn-primary btn-lg btn-block" onClick="myFunction()">Get Salary</button>

                        <br />
                   
                    </div>
                </div>
            </center>
        </div>
    </form>
   <script>
       function myFunction() {
          
           var exp = document.getElementById('exampleFormControlInput1').value
           console.log(exp)
          
              let xhr = new XMLHttpRequest();
           xhr.open('get', 'http://localhost:4000/predict?exp='+exp);
             xhr.send();

           xhr.onload = function () {
               
               let data = xhr.response
               let res = data.substring(11,17);
              localStorage.setItem("res", res);
               document.getElementById("inner").innerHTML ="₹"+res;
           };
        
           
       }
   </script>
</body>
</html>
