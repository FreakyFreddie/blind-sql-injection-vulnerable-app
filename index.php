<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<!--  <link rel="icon" href="../../favicon.ico"> -->

		<title>
			Blind SQL injection
		</title>

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<!-- include jquery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	</head>
	<body>
		<div class="container">
		<div class="row">
				<div class="col-lg-12">
					<h1>The Library of Everything</h1>
				</div>
			</div><!--/.row-->
			<div class="row">
				<form role="form" action="index.php" method="get">
					<div class="col-lg-11">
						<div class="form-group">
								<?php
									if(isset($_GET["searchterm"]))
									{
										echo '<input class="form-control" placeholder="Search books" id="searchterm" name="searchterm" value="'.$_GET["searchterm"].'"/>';
									}
									else
									{
										echo '<input class="form-control" placeholder="Search books" id="searchterm" name="searchterm" value=""/>';
									}
								?>
						</div>
					</div>
					<div class="col-lg-1">
						<div class="form-group">
							<input type="submit" class="btn btn-success" value="Search" />
						</div>
					</div>
				</form>
			</div><!--/.row-->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel">
						<div class="panel-body">
							<h2>
								<?php
									if(isset($_GET["searchterm"]))
									{
										//db connection
										$conn = new mysqli("localhost", "Webgebruiker", "Labo2017") or die("error.");
										
										mysqli_select_db($conn, "books") or die("error.");
										
										$sql = "SELECT * FROM books.books WHERE title LIKE '%".$_GET["searchterm"]."%'";
										
										$books = mysqli_query($conn, $sql) or die("error.");
										
										//DEBUG
										/*echo $sql."<br />";

										while ($row = mysqli_fetch_object($books))
										{
											echo $row->id."  ";
											echo $row->title."<br />";
										};
										*/
										$numresults = mysqli_num_rows($books);
										
										if($numresults == 0)
										{
											echo "No books exist with this pattern in the title.";
										}
										else
										{
											echo "$numresults books exist with this pattern in the title.";
										}
									}
								?>
							</h2>
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div>
	
		<!-- Text to be displayed in footer -->
		<footer class="navbar-fixed-bottom">
			<div class="container">
				<div class="footer-block text-right">
					<p>
						&copy; 2016 - 2017 Freaky IT
					</p>
				</div>
			</div>
		</footer>
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</body>
</html>
		
