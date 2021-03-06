<%-- 
    Document   : eBooksStoreMainPage.jsp
    Author     : gheorgheaurelpacurar
    Copyright  : gheorgheaurelpacurar
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link href="./css/menu.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <ul id="nav">
        <c:choose>
            <c:when test="${actualUserRole == 'admin'}">
                <li><a href="#">Manage</a>
                    <ul>
                        <c:choose>
                            <c:when test="${actualUserRole == 'admin'}">
                                <li><a href="./eBooksStoreAdminUsersPage.jsp">Users</a></li>
                                <li><a href="./eBooksStoreAdminUserRolesPage.jsp">User roles</a></li>
                                <li><a href="./eBooksStoreAdminEBooks.jsp">eBooks</a></li>
                            </c:when>
                        </c:choose>                              
                    </ul>
                </li>
            </c:when>
        </c:choose>        
        <c:choose>
            <c:when test="${actualUserRole == 'user'|| actualUserRole == 'admin'}">
                <li><a href="#">Orders</a>
                    <ul>
                        <%-- <li><a href="./eBooksStoreOrderBookPage.jsp">Orders</a></li> --%>
                        <%-- <li><a href="./eBooksStoreReportsPage.jsp">Orders</a></li> --%>
                        <li><a href="./eBooksStoreMainPage.jsp">Orders</a></li>
                    </ul>
                </li>    
            </c:when>
        </c:choose>                        
        <li><a href="./eBooksStoreExit.jsp">Log out</a></li>
        </ul>
        <script src="js/script.js"></script>
    </body>
</html>
