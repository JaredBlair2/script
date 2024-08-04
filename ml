const message = 'Scheduled task executed.';

function showNotification(message) {
  $notification.post('Cron Job Alert', '', message);
}

// Function to repeatedly show the notification every 1 seconds indefinitely
function startNotificationLoop() {
  setInterval(() => {
    showNotification(message);
  }, 1000); // 1000 milliseconds = 1 seconds
}

// Start the notification loop
startNotificationLoop();

// Complete the initial request (the script will keep running due to the interval)
$done({});



how about it only execute when this url appear https://gsp-ssl.ls.apple.com/dispatcher.arpc
