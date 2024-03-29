<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>

<body>


    <?php
    $_SESSION["connected"] = false;
    //var_dump($_SESSION["connected"]);
	if (!isset($_SESSION["connected"]) || $_SESSION["connected"] === false) {
    
	?>
    <h1> <?= $titre ?> </h1>
    <div id="logreg-forms">
        <form action="?action=login" method="post" class="form-signin">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>

            <input type="email" name="inputEmail" class="form-control" placeholder="Email address" required=""
                autofocus="">
            <input type="password" name="inputPassword" class="form-control" placeholder="Password" required="">

            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
            <hr>
        </form>
    </div>
    <?php
	} else {
	?>
    <div id="logreg-forms">
        <form action="?action=session" method="post" class="form-signin">
            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i>Se
                deconnecter</button>
        </form>
    </div>
    <?php
	}
	?>
</body>

</html>