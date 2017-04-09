<div class="starterTxt">
    <h1>Manage</h1>
</div>

<div class="container container-fluid">
    <form action="" method="post">
        <input type="hidden" name="action" value="isPost" />
        <div class="row">
            <div class="col-sm whitebox">
                <div class="purplebox">
                    <p>Empty your inventory and history - you are starting from scratch again, with the appropriate starting balance for a new plant.</p>
                </div>
                <input id="reboot" type="submit" class="btn btn-danger btn-block" name="submit" value="REBOOT" />
            </div>
            <div class="col-sm whitebox">
                <div class="yellowbox">
                    <p>Register for a new API key</p>
                </div>
                <input id="register" type="submit" class="btn btn-info btn-block" name="submit" value="REGISTER" />
            </div>
            <div class="col-sm whitebox">
               
            {robots}
			<div class="col-sm-3">
				<img class="img-responsive assemblypart" src="/img/{topline}1.jpeg" title="{topline}1"/>
				<img class="img-responsive assemblypart" src="/img/{middleline}2.jpeg" title="{middleline}2"/>
				<img class="img-responsive assemblypart" src="/img/{bottomline}3.jpeg" title="{bottomline}3"/>
			    <label>Robot: {head}{torso}{bottom}{botCode}</label>
                <input type="checkbox" name="robotSelected[]" value="{head} {torso} {bottom} {id}"/>
			</div>
			{/robots}
               
                <input id="sell" type="submit" class="btn btn-info btn-block" name="submit" value="SELL"/>
            </div>
        </div>
    </form>
</div>
