<div class="starterTxt">
    <h1>History</h1>
</div>
</br>
</br>
<div >
    <table class="table-responsive table table-hover" style="border: 2px solid gray;" align="center">
        <tr>
            <th>Purchase ID</th>
            <th>Transaction ID</th>
            <th>Assemblies</th>
            <th>Shipments</th>
            <th>Date</th>
            <th>Time</th>
        </tr>
        {history}
        <tr>
            <td>{purchaseId}</td>
            <td>{transactionId}</td>
            <td>{assemblies}</td>
            <td>{shipments}</td>
            <td>{date}</td>
            <td>{time}</td>
        </tr>
        {/history} 
    </table>
</div>