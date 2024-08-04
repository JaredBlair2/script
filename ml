const message = 'Scheduled task executed.';

function showNotification(message) {
  $notification.post('Cron Job Alert', '', message);
}

// Function to repeatedly show the notification every 5 seconds indefinitely
function startNotificationLoop() {
  setInterval(() => {
    showNotification(message);
  }, 5000); // 5000 milliseconds = 5 seconds
}

// Start the notification loop
startNotificationLoop();

// Complete the initial request (the script will keep running due to the interval)
$done({});
