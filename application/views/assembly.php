<div class="starterTxt">
    <h1>Assembly</h1>
</div>

<form action="assembly/submitForm" method="post">
	<div class="container container-fluid">
		<div class ="row">
			{parts}
			<div class="col-sm-3 whitebox">
			    <img class="img-responsive assemblypart" src="/img/{model}{piece}.jpeg" title="{model}{piece}"/></br>
			    <label>{model}{piece}</label>
			    <input type="checkbox" name="{model}{piece}"/>
			</div>
			{/parts}
		</div>
		<div class ="row">
			{robots}
			<div class="col-sm-3">
			    <label>{head}{torso}{bottom} {botCode}</label>
			</div>
			{/robots}
		</div>

		

		</br>
		</br>
		<div class ="col-sm-6 ">
		    <input type="submit" name="return" value="Return"/>
		    <input type="submit" name="build" value="Build"/>
		</div>
	</div>
</form>

</br>
</br>