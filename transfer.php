<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TSF Bank</title>
    <link rel="stylesheet" href="style_transfer.css">
</head>

<body>
    <header>
        <img src="logo1.png" alt="bank logo">

        <h1>TSF Bank</h1>

        <nav id="nav_bar">
            <a href="index.html">Home</a>
            <a href="about.html">About</a>
            <a href="view.php">Customers</a>

        </nav>
    </header>
    <section class="transfer">

        
        <?php

        include('connectivity.php');

        $customerid = $_GET['id'];
        $sqlget = "SELECT * FROM bankusers WHERE CustomerID = '$customerid'";
        $sqldata = mysqli_query($conn,$sqlget) or die('Error Getting the data');
        while($row = mysqli_fetch_array($sqldata, MYSQLI_ASSOC)){
            $name = $row['CustomerName'];
        }    

        echo "<table border='1' id='table_view'>";
        echo "<caption>Welcome ".$name."</caption>";
        echo "<tr>
            <th>Customer ID</th>
            <th>Account Number</th>
            <th>Customer Name</th>
            <th>Email</th>
            <th>Branch Number</th>
            <th>Available Balance</th>
            </tr>";
         
            $sqlget = "SELECT * FROM bankusers WHERE CustomerID = '$customerid'";
            $sqldata = mysqli_query($conn,$sqlget) or die('Error Getting the data');
        while($row = mysqli_fetch_array($sqldata, MYSQLI_ASSOC)){
            echo "<tr><td>";
                echo $row['CustomerID'];
            echo "</td><td>";
                echo $row['AccountNumber'];
            echo "</td><td>";
                echo $row['CustomerName'];
            echo "</td><td>";
                echo $row['Email'];
            echo "</td><td>";
                echo $row['BranchName'];
            echo "</td><td>";
                echo $row['AvailableBalance'];
            
            echo "</td></tr>";
        }

          echo "</table>";
        echo "<br/>
        

        <form action='transaction_all.php'>
        
        <input type='hidden' name='tn' value='$customerid'>
        <button type='button' class='button'><a href='transfer_me.php?id=$customerid'>View My Transaction</a></button><br/>
        <label>Transfer To:  </label>
        <select name='rn' required>
            <option disabled selected>-- Select Receiver Name --</option>";
        $query = "SELECT * FROM bankusers WHERE NOT CustomerID = '$customerid'";
        $sqldataa = mysqli_query($conn,$query) or die('Error Getting the data');
        while($row = mysqli_fetch_array($sqldataa, MYSQLI_ASSOC)){
            echo "<option value='". $row['CustomerName'] ."'>" .$row['CustomerName'] ."</option>";   
        }

        echo "</select><br/>";

        echo '<label>Amount:  </label><input type="number" name="cashtransfer" id="cashtransfer" placeholder="Enter the amount" value="" required="required"><br/><br/>
        <label>A Message For the Receiver: </label><br/>
        <textarea name="msg" rows="5" cols="40"></textarea>
        
        <button type="submit">Transfer</button>
        


        </form>';
        ?>
    </section>

    <footer>
        &copy;siman.parveen29@gmail.com
        <p>This Page is created by <b>Siman Parveen</b> as a Web Development and Designing Intern at The Sparks Foundation</p>
    </footer>
    <script src="script.js"></script>
</body>

</html>