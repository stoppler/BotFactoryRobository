<div class="starterTxt">
    <h1>Assembly</h1>
</div>

<form action="" method="post">
	<input type="hidden" name="action" value="isPost" />
	<div class="container container-fluid">
		{messages}
			<div class="alert alert-info">
			 	{message}
			</div>
		{/messages}
		<div class ="row">
			<h2>Top Parts</h2>
			{topparts}
			<div class="col-sm-3 whitebox">
			    <img class="img-responsive assemblypart" src="/img/{model}{piece}.jpeg" title="{model}{piece}"/></br>
			    <label>{model}{piece}</label>
			    <input type="checkbox" name="topSelected[]" value="{model} {caCode} {id}"/>
			</div>
			{/topparts}
		</div>
		<div class ="row">
			<h2>Middle Parts</h2>
			{middleparts}
			<div class="col-sm-3 whitebox">
			    <img class="img-responsive assemblypart" src="/img/{model}{piece}.jpeg" title="{model}{piece}"/></br>
			    <label>{model}{piece}</label>
			    <input type="checkbox" name="middleSelected[]" value="{model} {caCode} {id}"/>
			</div>
			{/middleparts}
		</div>
		<div class ="row">
			<h2>Bottom Parts</h2>
			{bottomparts}
			<div class="col-sm-3 whitebox">
			    <img class="img-responsive assemblypart" src="/img/{model}{piece}.jpeg" title="{model}{piece}"/></br>
			    <label>{model}{piece}</label>
			    <input type="checkbox" name="bottomSelected[]" value="{model} {caCode} {id}"/>
			</div>
			{/bottomparts}
		</div>
		<div class ="row">
			<h2>Robots Built</h2>
			{robots}
			<div class="col-sm-3">
				<img class="img-responsive assemblypart" src="/img/{topline}1.jpeg" title="{topline}1"/>
				<img class="img-responsive assemblypart" src="/img/{middleline}2.jpeg" title="{middleline}2"/>
				<img class="img-responsive assemblypart" src="/img/{bottomline}3.jpeg" title="{bottomline}3"/>
			    <label>Robot: {head}{torso}{bottom}{botCode}</label>
			</div>
			{/robots}
		</div>
		</br>
		</br>
		<div class ="col-sm-6 ">
		    {return}
		    <input class="btn btn-success" type="submit" name="submit" value="Build"/>
		</div>
	</div>
</form>

</br>
</br>