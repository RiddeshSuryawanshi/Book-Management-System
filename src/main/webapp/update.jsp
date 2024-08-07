<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
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
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h2 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    form input[type="text"] {
        width: 100%;
        max-width: 400px;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 4px;
    }

    form input[type="submit"], form input[type="reset"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 14px;
        border-radius: 4px;
        cursor: pointer;
        margin: 5px;
        transition: background-color 0.3s;
    }

    form input[type="submit"]:hover, form input[type="reset"]:hover {
        background-color: #0056b3;
    }

    .back-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        font-size: 16px;
        text-decoration: none;
        color: #007bff;
        transition: color 0.3s;
    }

    .back-link:hover {
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
    <h2>Update Book Here</h2>
    <form action="BookUpdate" method="post">
        <label for="bid">Book Id:</label>
        <input type="text" name="bid" id="bid" required>
        <label for="title">Book Title:</label>
        <input type="text" name="title" id="title" required>
        <label for="author">Book Author:</label>
        <input type="text" name="author" id="author" required>
        <label for="price">Book Price:</label>
        <input type="text" name="price" id="price" required>
        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">
    </form>
    <a href="BookListServlet" class="back-link">Back to Book List</a>
</div>

</body>
</html>
