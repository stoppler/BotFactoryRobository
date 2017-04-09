<div class="container container-fluid partscontainer">

    <a href="/part/build_parts"><input type="button" value="Build more parts"/></a>
    <a href="/part/buy_parts"><input type="button" value="Buy parts"/></a>
    {parts}
    <div class="col-sm-4 parts">
        <h5>Part<span class="glyphicon glyphicon-wrench"/>: {model}{piece}</h5>
        <label>Certificate: {caCode}</label>
        <!--<h5>Line of bot: {line}</h5>-->
        <a href="/parts/{id}">
            <img class="img-responsive" src="/img/{model}{piece}.jpeg" title="{model}{piece}">
        </a>
    </div>
    {/parts}
</div>
