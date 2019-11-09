<?php 

	include('config/db_connect.php');
    session_start();
    $farmerid=$_SESSION["farmerid"];
    $fname=$_SESSION["fname"];
	// write query for all pizzas
	$sql = "SELECT * FROM BORROW BR,BANK B
	        WHERE LoanType='Fisheries Loan' AND BR.BankID=B.BankID ";

	// get the result set (set of rows)
	$result = mysqli_query($conn, $sql);

	// fetch the resulting rows as an array
	$diffloans = mysqli_fetch_all($result, MYSQLI_ASSOC);

	// free the $result from memory (good practise)
	mysqli_free_result($result);

	// close connection
	mysqli_close($conn);


?>

<!DOCTYPE html>
<html>
	
	<?php include('templates/header.php'); ?>
    <table id="customers" class="tablemar">
		  <tr>
		    <th>LoanID</th>
		    <th>Bank Name</th>
		    <th>RepayPeriod</th>
		    <th>LoanInterest</th>
		    <th>MaxAmount</th>
		    <th>Margin</th>
		    <th>URL</th>
		  </tr>
		  <?php foreach($diffloans as $loan): ?>
			  <tr>
			    <td><?php echo htmlspecialchars($loan['LoanID']); ?></td>
			    <td><?php echo htmlspecialchars($loan['BankName']); ?></td>
			    <td><?php echo htmlspecialchars($loan['RepayPeriod']); ?></td>
			    <td><?php echo htmlspecialchars($loan['LoanInterest']); ?>%</td>
			    <td><?php echo htmlspecialchars($loan['MaxAmount']); ?>.rs</td>
			    <td><?php echo htmlspecialchars($loan['Margin']); ?>%</td>
			    <td><a href="<?php echo htmlspecialchars($loan['URL']); ?>">More Info</a></td>
			  </tr>
		  <?php endforeach; ?>
		 
	</table>


    <?php include('templates/footer.php'); ?>
</html>