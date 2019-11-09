 <?php  
    session_start();
    $farmerid=$_SESSION["farmerid"];
    $fname=$_SESSION["fname"];
?>
<!DOCTYPE html>
<html>
	
	<?php include('templates/header.php'); ?>
     
     <h3 class="white-text center" style="margin-top:100px;">Your Loan Is Under Process</h1>
     <h4 class="white-text center" style="margin-top:50px;">It Will be Approved In A Short Period Of Time</h4>
     <div class="center" style="margin-top:50px;">
       <a class="btn brand z-depth-0" href="dairyloan.php">Continue...</a>
     </div>
    <?php include('templates/footer.php'); ?>
</html>