
<div class="container container-fluid partscontainer">
    {parts}
    <div class="col-sm-4 parts">
        <h5>Part<span class="glyphicon glyphicon-wrench"/>: {model}{piece}</h5>
        <!--<h5>Line of bot: {line}</h5>-->
        <a href="/parts/{id}">
            <img class="img-responsive" src="/img/{model}{piece}.jpeg" title="{model}{piece}">
        </a>
    </div>
    {/parts}
</div>
