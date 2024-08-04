const message = 'Scheduled task executed.';

// Function to display a notification
function showNotification(message) {
  $notification.post('Cron Job Alert', '', message);
}

// Display the notification
showNotification(message);

// Complete the request
$done({});
