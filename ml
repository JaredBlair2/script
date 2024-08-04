const message = 'TCP connection made to 156.59.200.90.';

// Function to display a notification
function showNotification(message) {
  $notification.post('TCP Connection Alert', '', message);
}

// Display the notification
showNotification(message);

// Complete the request
$done({});
