<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>{pagetitle}</title>
        <meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/template.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                
                <div class="navbar-header">
                <a class="navbar-brand" href="/index.php#home"><img src="/img/huckleberry.png" width="100"></a>              
                <h1 class="ptitle">{ptitle}</h1>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/"><span class="glyphicon glyphicon-home"/></a></li>
                        <li><a href="/parts">Parts</a></li>
                        <li><a href="/assembly">Assembly</a></li>
                        <li><a href="/history">History</a></li>
						{managetab}
						<li class="dropdown">
						      <a class="dropdown-toggle" data-toggle="dropdown" href="#">User Role<b class="caret"></b></a>
						      <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
						      		<li><a href="/roles/actor/guest">Guest</a></li>
						            <li><a href="/roles/actor/owner">Boss</a></li>
						      </ul>
						</li>
                    </ul>
                </div>
            </div>
        </nav>
        <br><br><br><br><br><br><br><br><br><br>
        {content}
    </body>
</html>
