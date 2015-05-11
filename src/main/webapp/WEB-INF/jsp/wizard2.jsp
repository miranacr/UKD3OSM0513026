<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
        <style type="text/css">
            body{
                font-family: cursive;
            }
            #form{
                background: #ead9f2;
                padding:10px;
                width: 350px;
                border: 3px solid #b970e3;
            }
            
            label{
                color: #12385c;
            }
            
            #button{
                background: aliceblue;
                border: 1px solid black;
                font-family: cursive;
                width: 50px;
            }
            
            input{
                padding: 3px;
                font-family: cursive;
            }
            
            div{
                margin-bottom: 5px;
            }
            
            .errors{
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Form 2</h1>
        <form:form id="form" modelAttribute="customer" action="${pageContext.request.contextPath}/wizard/form-3" method="post">
            <div>Email</div>
            <div><form:errors path="email"  cssClass="errors"/></div>
            <div><form:input path="email"/></div>
            <div><input id="button" type="submit" value="next"/></div>
        </form:form>
    </body>
</html>
