<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>eSnack</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/style.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
	</head>
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="index.html" class="navbar-brand">eSnack</a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="index.html"><span class="glyphicon glyphicon-home"></span>Home</a></li>
					<li><a href="dashboard.php"><span class="glyphicon glyphicon-modal-window"></span>Product</a></li>
				</ul>
			</div>
		</div>
		<p><br/></p>
		<p><br/></p>
		<p><br/></p>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8" id="signup_msg">
					<!--Alert from signup form-->
				</div>
				<div class="col-md-2"></div>
			</div>
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Customer Change Password</div>
						<div class="panel-body">
							<form action="update.php" method="post">
								<div class="row">
									<div class="col-md-12">
										<label for="password">Password Lama</label>
										<input type="password" name="passwordlama"class="form-control" placeholder="">
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label for="password">Password</label>
										<input type="password" name="password"class="form-control" placeholder="">
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label for="repassword">Re-Enter Password</label>
										<input type="password" name="repassword"class="form-control" placeholder="">
									</div>
								</div>
								<p><br/></p>
								<div class="row">
									<div class="col-md-12">
										<input style="float:right;" value="Change" type="button" name="change_button"class="btn btn-success btn-lg">
									</div>
								</div>
							</div>
						</form>
						<div class="panel-footer">eSnack Production @Copyright</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</body>
</html>