const message = 'Scheduled task executed.';

// Function to display a notification
function showNotification(message) {
  $notification.post('Cron Job Alert', '', message);
}

// Display the notification
showNotification(message);
// Function to repeatedly show the notification every 1 seconds indefinitely
function startNotificationLoop() {
  setInterval(() => {
    showNotification(message);
  }, 1000); // 1000 milliseconds = 1 seconds
}

// Start the notification loop
startNotificationLoop();

// Complete the request
// Complete the initial request (the script will keep running due to the interval)
$done({});
