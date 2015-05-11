<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
        <style type="text/css">
            body{
                font-family: cursive;
            }
            #box{
                background: #ead9f2;
                padding:10px;
                width: 350px;
                border: 3px solid #b970e3;
                color: #12385c;
            }
        </style>
    </head>
    <body>
        <h1>Your Data</h1>
        <div id="box">
           <p>${customer.name}</p>
           <p>${customer.email}</p>
           <p>${customer.country}</p>
        </div>
        
    </body>
</html>
