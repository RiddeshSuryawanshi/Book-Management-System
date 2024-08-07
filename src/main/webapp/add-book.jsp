<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD BOOK</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #e9ecef; /* Light grey background */
        margin: 0;
        padding: 0;
    }

    .navbar {
        background-color: #343a40; /* Darker background */
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .navbar a {
        float: left;
        display: block;
        color: #ffffff; /* White text color */
        text-align: center;
        padding: 15px 25px;
        text-decoration: none;
        font-size: 18px; /* Slightly larger font size */
        font-weight: bold; /* Bold text */
    }

    .navbar a:hover {
        background-color: #495057; /* Slightly lighter on hover */
        color: #ffffff;
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 20px;
        padding-top: 40px; /* Reduced padding to bring content up */
    }

    h2 {
        color: #212529; /* Darker text color */
        text-align: center;
        margin-bottom: 25px;
        font-size: 26px; /* Larger font size */
        font-weight: 600; /* Semi-bold text */
    }

    .form-container {
        background-color: #ffffff;
        border-radius: 12px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        padding: 30px; /* Increased padding for more space */
        width: 100%;
        max-width: 500px;
        margin-bottom: 25px;
        border: 1px solid #dee2e6; /* Light grey border */
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 20px; /* Increased space between form elements */
    }

    label {
        font-size: 18px; /* Larger font size */
        color: #495057; /* Darker grey color */
        margin-bottom: 5px;
        display: block;
        text-align: left; /* Align text to the left */
        width: 100%;
    }

    input[type="text"] {
        padding: 12px;
        margin-bottom: 10px;
        border: 1px solid #ced4da; /* Light grey border */
        border-radius: 6px;
        width: 100%;
        max-width: 100%; /* Full width for smaller screens */
        font-size: 16px; /* Font size for better readability */
    }

    .button-group {
        display: flex;
        justify-content: center; /* Center buttons */
        gap: 10px; /* Space between buttons */
    }

    input[type="submit"], input[type="reset"], button {
        background-color: #007bff; /* Primary blue color */
        color: white;
        border: none;
        padding: 12px 25px; /* Larger padding for buttons */
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px; /* Font size */
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
    }

    input[type="submit"]:hover, input[type="reset"]:hover, button:hover {
        background-color: #0056b3; /* Darker blue on hover */
        transform: translateY(-2px);
    }

    .continue-text {
        font-size: 18px; /* Larger font size */
        color: #495057; /* Dark grey color */
        text-align: center;
    }

    .continue-text a {
        color: #007bff; /* Blue color for link */
        text-decoration: none;
        font-weight: bold;
    }

    .continue-text a:hover {
        text-decoration: underline;
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
    <div class="form-container">
        <h2>Please Add Your Book Here..!!</h2>
        <form action="AddBookServlet" method="post">
            <label for="title">Title</label>
            <input type="text" name="title" id="title" required>
            
            <label for="author">Author</label>
            <input type="text" name="author" id="author" required>
            
            <label for="price">Price</label>
            <input type="text" name="price" id="price" required>
            
            <div class="button-group">
                <input type="submit" value="Submit">
                <input type="reset" value="Cancel">
            </div>
        </form>
    </div>

    <div class="continue-text">
        <p>Or continue to <a href="BookListServlet">Book List</a></p>
    </div>
</div>

</body>
</html>
