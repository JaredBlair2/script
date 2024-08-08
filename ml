// Set the response body to a null JavaScript object
var obj = null;

// Since JSON.stringify(null) returns 'null', prepare the response
var modifiedResponse = JSON.stringify(obj);

// Complete the script by passing the modified response back
$done({body: modifiedResponse});
