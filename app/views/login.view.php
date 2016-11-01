		<!-- Code started -->
        <div class="container">
            <div class="row">
            	<div class="col-md-12">
					<br>
					<br>
					<br>
            	</div>
            </div>
        </div>
        <div class="container">
            <div class="row">
            <?php view('partial/message') ?>
               	<div class="col-md-5">
			        <div class="modal-content">
	                    <div class="panel-heading">
	                        <h3 class="panel-title">Sign In</h3>
	                    </div>
	                    <div class="panel-body">
	                        <form role="form" action="/login" method="POST">
	                            <fieldset>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="E-mail" name="email" type="email">
	                                </div>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="Password" name="password" type="password">
	                                </div>
	                                <div class="form-group">
	                                 
	                                    <input class="form-control" placeholder="Captcha Code" name="captcha" type="text">
	                                </div>
	                                <?php echo '<img src="' . $_SESSION['captcha']['image_src'] . '" alt="CAPTCHA" />' ?>
	                                <?php $_SESSION['captcha-code'] = $_SESSION['captcha']['code']  ?>
	                               
	                                <!-- Change this to a button or input when using this as a form -->
	                                <button type="submit" class="btn btn-sm btn-success pull-right">Login</button>
	                            </fieldset>
	                        </form>
	                    </div>
	                </div>
				</div>
				 <div class="col-md-5 col-md-offset-1">
 					<div class="modal-content">
	                    <div class="panel-heading">
	                        <h3 class="panel-title">Registration Form</h3>
	                    </div>
	                    <div class="panel-body">
	                        <form role="form" action="/registration" method="POST">
	                            <fieldset>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="E-mail" name="email" type="email">
	                                </div>
	                                <div class="form-group">
	                                    <input class="form-control" placeholder="Password" name="password" type="password">
	                                </div>
	                                <!-- Change this to a button or input when using this as a form -->
	                                <button type="submit" class="btn btn-sm btn-success pull-right">Register</button>
	                            </fieldset>
	                        </form>
	                    </div>
	                </div>
				</div>
            </div>
        </div>
            
        