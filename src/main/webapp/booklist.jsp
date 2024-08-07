<%@page import="com.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System - Book List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    .navbar {
        background-color: #333;
        overflow: hidden;
    }

    .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }

    .container {
        margin: 20px;
        padding-top: 50px;
    }

    h2 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    table, th, td {
        border: 1px solid #ddd;
    }

    th, td {
        padding: 15px;
        text-align: left;
    }

    th {
        background-color: #f8f8f8;
        color: #333;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    .action-form {
        display: inline;
        margin: 0;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 8px 16px;
        font-size: 14px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .add-book-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        font-size: 18px;
        text-decoration: none;
        color: #007bff;
        transition: color 0.3s;
    }

    .add-book-link:hover {
        color: #0056b3;
    }
</style>
</head>
<body>

<div class="navbar">
    <a href="index.jsp">Home</a>
    <a href="add-book.jsp">Add Book</a>
    <a href="BookListServlet">Book List</a>
    
    <a href="about.jsp">About</a>
</div>

<div class="container">
    <h2>Book List</h2>
    <table>
        <tr>
            <th>Book Id</th>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        <%
            List<Book> booklist = (List<Book>) request.getAttribute("books");
            if (booklist != null) {
                for (Book book : booklist) {
        %>
        <tr>
            <td><%= book.getBid() %></td>
            <td><%= book.getTitle() %></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getPrice() %></td>
            <td>
                <form action="update.jsp" method="post" class="action-form">
                    <input type="hidden" name="id" value="<%= book.getBid() %>">
                    <input type="submit" value="Update">
                </form>
                <form action="DeleteBookServlet" method="post" class="action-form">
                    <input type="hidden" name="id" value="<%= book.getBid() %>">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5">No books available</td>
        </tr>
        <%
            }
        %>
    </table>
    <a href="add-book.jsp" class="add-book-link">Add Book</a>
</div>
</body>
</html>
