<?php 
include 'database.php';
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysqli_real_escape_string($mysqli, trim($_POST['username']));
    $email = mysqli_real_escape_string($mysqli, trim($_POST['email']));
    $password = trim($_POST['password']);
    $confirmpassword = trim($_POST['confirmpassword']);

   
    if ($password === $confirmpassword) {
     
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        
        $stmt = $mysqli->prepare("INSERT INTO registrant (username, email, password) VALUES (?, ?, ?)");
        
        if ($stmt) { 
            $stmt->bind_param("sss", $username, $email, $hashed_password);

            if ($stmt->execute()) {
           
                $_SESSION['username'] = $username;
                $_SESSION['email'] = $email;

               
                header("Location: teachers/teachers.php");
                exit();
            } else {
                echo "Error: " . $stmt->error; // Execution error
            }
            
            // Close the statement
            $stmt->close();
        } else {
            echo "Error preparing the statement: " . $mysqli->error; // Preparation error
        }
    } else {
        echo "Passwords do not match.";
    }
}

// Close the connection
$mysqli->close();
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Capstone Project">
    <meta name="author" content="Ely Gian GA">
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="index.css">
    <title>Sign In</title>
    <style>
        /* Keyframe for slide-in animation */
        @keyframes slideInLeft {
            from {
                transform: translateX(-100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }

        /* Description styling with animation */
        .description {
            position: absolute;
            left: 20px;
            top: 50px;
            max-width: 300px;
            animation: slideInLeft 1s ease-out forwards;
        }
    </style>
</head>
<body>
    <!-- Description Section with animation -->
    <div class="description">
        <h2 style="color: powderblue">About Our Platform</h2>
        <hr style="border: 3px solid black;">
        <p class="message">
            Welcome to our capstone project sign-up page. Here, you can create an account to access exclusive features 
            for teachers, including course management, student tracking, and personalized dashboards. Sign up to 
            get started with these exciting features!
        </p>
    </div>

    <!-- Form Section within a centered container -->
    <div class="container mt-5" style="margin-left: 350px;">
        <h2 class="text-center">Sign In</h2> 
        <form action="" method="post">
            <div class="form-group">
                <label for="username">Full Name:</label>
                <input type="text" name="username" class="form-control" id="username" placeholder="Enter full name" required>
            </div><br>
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required>
            </div><br>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
            </div><br>
            <div class="form-group">
                <label for="confirmpassword">Confirm Password:</label>
                <input type="password" name="confirmpassword" class="form-control" id="confirmpassword" placeholder="Confirm Password" required>
            </div><br>
            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
            <hr>
            <p class="mt-3 text-center">Already Have an Account? <a href="Login.php">Log In</a></p>
        </form>
    </div>
</body>
</html>
