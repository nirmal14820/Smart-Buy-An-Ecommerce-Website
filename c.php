<?php
// Start a new session and connect to the database
$conn = mysqli_connect("localhost", "root", "", "e_com");
session_start();

// Error reporting for debugging during development
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Check if form is submitted
if (isset($_POST['submit'])) {
    // Fetch form input and escape special characters to prevent SQL injection
    $name = mysqli_real_escape_string($conn, $_POST['c_name']);
    $email = mysqli_real_escape_string($conn, $_POST['c_email']);
    $address = mysqli_real_escape_string($conn, $_POST['c_address']);
    $pincode = mysqli_real_escape_string($conn, $_POST['pincode']);
    $phone = mysqli_real_escape_string($conn, $_POST['c_contact']);
    $pass = mysqli_real_escape_string($conn, $_POST['c_password']);
    $cpass = mysqli_real_escape_string($conn, $_POST['cpassword']);

    // Check if email already exists in the database
    $select = "SELECT * FROM customers WHERE customer_email = '$email'";
    $result = mysqli_query($conn, $select);

    if (mysqli_num_rows($result) > 0) {
        // If email exists, display an error
        $error[] = 'User already exists!';
    } else {
        // If passwords don't match, display an error
        if ($pass != $cpass) {
            $error[] = 'Passwords do not match!';
        } else {
            // Insert the new user's data into the database with plain text password
            $insert = "INSERT INTO customers (customer_name, customer_email, customer_address, pincode, customer_contact, customer_pass)
                       VALUES ('$name', '$email', '$address', '$pincode', '$phone', '$pass')";

            if (mysqli_query($conn, $insert)) {
                // Redirect to login page after successful registration
                header('Location: login_form.php');
                exit(); // Prevent further execution after redirect
            } else {
                // Handle any insertion errors
                $error[] = 'Failed to register. Please try again later.';
            }
        }
    }
}



?>



<?php

if (!isset($_SESSION['customer_email'])){
echo "<a href='checkout.php'>My Account</a>";

     } else{

echo "<a href='customer/my_account.php?my_order'>My Account</a>";

     }

?></li> 
 
<li>
<a href="cart.php"><i class="fa fa-shopping-cart"></i>Goto Cart</a></li>

<li>
<?php

if (!isset($_SESSION['customer_email'])){
echo "<a href='checkout.php'>Login</a>";

     } else{

echo "<a href='logout.php'>Logout</a>";

     }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
    <!-- Link to external CSS -->
    <link rel="stylesheet" href="register.css">
</head>
<body>

<div class="form-container">
   <!-- Registration form -->
   <form action="" method="post">
      <h2>New User Registration Form</h2>

      <!-- Display error messages if any -->
      <?php
      if (isset($error)) {
          foreach ($error as $error_msg) {
              echo '<span class="error-msg">' . $error_msg . '</span>';
          }
      }
      ?>

      <!-- Grouped inputs for name and email -->
      <div class="input-group">
          <input type="text" name="c_name" required placeholder="Enter your name" class="half-width">
          <input type="email" name="c_email" required placeholder="Enter your email" class="half-width">
      </div>

      <!-- Grouped inputs for address and pincode -->
      <div class="input-group">
          <input type="text" name="c_address" required placeholder="Enter your address" class="half-width">
          <input type="text" name="pincode" required placeholder="Enter your pincode" class="half-width">
      </div>

      <!-- Grouped inputs for phone number and password -->
      <div class="input-group">
          <input type="text" name="c_contact" required placeholder="Enter your phone number" class="half-width">
          <input type="password" name="c_password" required placeholder="Enter your password" class="half-width">
      </div>

      <!-- Confirm password field -->
      <div class="input-group">
          <input type="password" name="cpassword" required placeholder="Confirm your password">
      </div>

      <!-- Submit button -->
      <input type="submit" name="submit" value="Register Now" class="form-btn">

      <!-- Link to login form if already registered -->
      <p>Already have an account? <a href="login_form.php">Login now</a></p>
   </form>
</div>

</body>
</html>
