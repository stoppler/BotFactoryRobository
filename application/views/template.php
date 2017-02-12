<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>{pagetitle}</title>
        <meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="/assets/css/default.css"/>
	</head>
	<body>
        <div id="container">
			<ul>
				<li>
					<a class="brand" href="/">Home</a>
				</li>
				<li>
					<a class="brand" href="/robots">Robots</a>
				</li>
				<li>
					<a class="brand" href="/parts">Parts</a>
				</li>
				<li>
					<a class="brand" href="/histories">History</a>
				</li>
			</ul>
			{content}
			<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds.
					{ci_version}</p>
        </div>
	</body>
</html>
