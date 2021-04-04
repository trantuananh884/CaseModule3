<%--
  Created by IntelliJ IDEA.
  User: Window 10
  Date: 1/13/2021
  Time: 11:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<html>
<head>
    <title>Products Management Application</title>
</head>
<body style="background: url(https://i.pinimg.com/originals/de/6a/c5/de6ac50a8042cb358d9dab2066ed1cfc.jpg) no-repeat;background-size: 100%" >
<center>
    <h1 style="color: antiquewhite">Product Management</h1>
    <h2>
        <a href="/products?action=create" class="btn btn-success" >Add New Product</a>
    </h2>
</center>
<div style="opacity: 0.7" align="center">
    <table class="table table-success table-striped">
        <caption align="center"><h2>List of Products</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Category</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="product" items="${productlist}">
            <tr>
                <td><c:out value="${product.id}"/></td>
                <td><c:out value="${product.name}"/></td>
                <td><c:out value="${product.price}"/></td>
                <td><c:out value="${product.category}"/></td>
                <td>
                    <a href="/products?action=edit&id=${product.id}" class="btn btn-warning">Edit</a>
                    <a href="/products?action=delete&id=${product.id}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>