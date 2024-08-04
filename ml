const targetUrl = 'https://gsp-ssl.ls.apple.com/dispatcher.arpc';
const message = 'Scheduled task executed.';

function showNotification(message) {
  $notification.post('URL Matched', '', message);
}

function checkAndNotify(requestUrl) {
  if (requestUrl === targetUrl) {
    showNotification(message);
  }
}

// Simulate a request to demonstrate the functionality
const currentRequestUrl = 'https://gsp-ssl.ls.apple.com/dispatcher.arpc'; // Replace with dynamic URL in actual use
checkAndNotify(currentRequestUrl);

// Complete the request
$done({});
