<?php 

	include('crop_loan/config/db_connect.php');

	// write query for all pizzas
	$sql = "SELECT * FROM LOAN WHERE Approve='Not Approved' ";

	// get the result set (set of rows)
	$result = mysqli_query($conn, $sql);

	// fetch the resulting rows as an array
	$diffloans = mysqli_fetch_all($result, MYSQLI_ASSOC);

	// free the $result from memory (good practise)
	mysqli_free_result($result);

	if(isset($_POST['submit'])){
        $LoanNo=$_POST['LoanNo'];
		$sql="UPDATE LOAN SET Approve ='Approved' WHERE LoanNo=$LoanNo";
        mysqli_query($conn, $sql);
        header('Location: Approve.php');
	}
    
	// close connection
	mysqli_close($conn);

?>

<!DOCTYPE html>
<html>
<head>
	<title>Approval</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
	<style type="text/css">
	body{
		background: linear-gradient(to left,rgba(7,27,82,1)0%, rgba(0,128,128,1)100%);
	}
	.brand{
	  	background: #cbb09c !important;
	}
    .lightgrey{
       color:#B9B3A8;
    }
  	.brand-text{
  		color: #cbb09c !important;
  	}
  	form{
  		max-width: 600px;
  		margin: 20px auto;
  		padding: 20px;
  	}
    .blue{
    background: linear-gradient(to left,rgba(7,27,82,1)0%, rgba(0,128,128,1)100%);
    }
    /*----------------------------For diffLoanInfo.php--------------------------------*/

    #customers {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 80%;
    }

    #customers td, #customers th {
      border: 1px solid #ddd;
      padding: 8px;
    }

    #customers tr{
              background-color: white;

    }

    #customers tr:hover {background-color: #ddd;}

    #customers th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: grey;
      color: white;
     }
     table{
       margin: 60px auto;
     }
  </style>

</head>
<body>
	  <table id="customers" >
		  <tr>
		    <th>LoanNo</th>
		    <th>AccNo</th>
		    <th>LoanID</th>
		    <th>Amount</th>
		    <th>LoanDate</th>
		    <th>Lstatus</th>
		    <th>Approve</th>
		  </tr>
		  <?php foreach($diffloans as $loan): ?>
			  <tr>
			    <td><?php echo htmlspecialchars($loan['LoanNo']); ?></td>
			    <td><?php echo htmlspecialchars($loan['AccNo']); ?></td>
			    <td><?php echo htmlspecialchars($loan['LoanID']); ?></td>
			    <td><?php echo htmlspecialchars($loan['Amount']); ?>.rs</td>
			    <td><?php echo htmlspecialchars($loan['LoanDate']); ?></td>
			    <td><?php echo htmlspecialchars($loan['Lstatus']); ?></td>
			    <td><?php echo htmlspecialchars($loan['Approve']); ?></td>
			  </tr>
		  <?php endforeach; ?>
		  
	</table>
	<form class="white" action="Approve.php" method="POST">
			<label>Enter Loan No To Approve</label>
			<input type="text" name="LoanNo" value="">
		    <input type="submit" name="submit" value="Approve" class="btn brand z-depth-0">
	</form>
		 
</body>
</html>