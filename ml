const targetUrl = 'https://gsp-ssl.ls.apple.com/dispatcher.arpc';
const message = 'Scheduled task executed.';

function showNotification(message) {
  $notification.post('URL Matched', '', message);
  $notification.post('Cron Job Alert', '', message);
}

function checkAndNotify(requestUrl) {
  if (requestUrl === targetUrl) {
// Function to repeatedly show the notification every 1 seconds indefinitely
function startNotificationLoop() {
  setInterval(() => {
    showNotification(message);
  }
  }, 1000); // 1000 milliseconds = 1 seconds
}

// Simulate a request to demonstrate the functionality
const currentRequestUrl = 'https://gsp-ssl.ls.apple.com/dispatcher.arpc'; // Replace with dynamic URL in actual use
checkAndNotify(currentRequestUrl);
// Start the notification loop
startNotificationLoop();

// Complete the request
// Complete the initial request (the script will keep running due to the interval)
$done({});

