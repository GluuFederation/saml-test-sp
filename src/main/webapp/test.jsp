<%-- 
    Document   : test
    Created on : Oct 3, 2016, 12:33:53 AM
    Author     : Dmitry Ognyannikov,2016
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login test</title>
    </head>
    <body>
        <div class="container">
            <h1>This is secured page!</h1>
            <p>
                Hello <b><c:out value="${pageContext.request.remoteUser}"/></b>
            </p>
            <c:url var="logoutUrl" value="/logout"/>
            <form class="form-inline" action="${logoutUrl}" method="post">
                <input type="submit" value="Log out" />
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
            
    </body>
</html>
