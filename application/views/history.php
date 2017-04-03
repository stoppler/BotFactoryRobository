<div class="starterTxt">
    <h1>History</h1>
</div>
</br>
</br>
<div >
    <table class="table-responsive table table-hover" style="border: 2px solid gray;" align="center">
        <tr>
            <th>Purchase ID</th>
            <th>Transaction Type</th>
            <th>Value</th>
            <th>Date</th>
            <th>Product Type</th>
            <th>Product ID</th>
        </tr>
        {history}
        <tr>
            <td>{purchaseId}</td>
            <td>{transactionType}</td>
            <td>{value}</td>
            <td>{dateTime}</td>
            <td>{productType}</td>
            <td>{productIdentifier}</td>
        </tr>
        {/history} 
    </table>
</div>

