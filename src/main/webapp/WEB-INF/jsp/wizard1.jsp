<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <h1>Form 1</h1>
        <form:form id="form" modelAttribute="customer" action="${pageContext.request.contextPath}/wizard/form-2" method="post">
            <div><label>Name</label></div>
            <div><form:errors path="name"  cssClass="errors"/></div>
            <div><form:input path="name"/></div>
            <div><input id="button" type="submit" value="next"/></div>
        </form:form>
    </body>
</html>
