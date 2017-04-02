
<div class="container container-fluid partscontainer">
    {parts}
    <div class="col-sm-4 parts">
        <h5>Part<span class="glyphicon glyphicon-wrench"/>: {partCode}</h5>
        <h5>Line of bot: {line}</h5>
        <a href="/parts/{id}">
            <img class="img-responsive" src="/img/{img}" title="{partCode} {line}">
        </a>
    </div>
    {/parts}
</div>
