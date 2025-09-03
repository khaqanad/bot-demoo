<!DOCTYPE html>
<html>
<head>
  <title>Test Booking Bot Demo</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    #chat { border:1px solid #ccc; padding:10px; height:300px; overflow-y:auto; margin-bottom:10px; }
    input { width:70%; padding:5px; }
    button { padding:5px; }
    .user { color: blue; margin:5px 0; }
    .bot { color: green; margin:5px 0; }
  </style>
</head>
<body>
  <h2>Test Booking Bot Demo</h2>
  <div id="chat"></div>
  <input type="text" id="userInput" placeholder="Ask about earlier tests..." />
  <button onclick="sendMessage()">Send</button>

  <script>
    const chat = document.getElementById('chat');

    function addMessage(sender, text) {
      const div = document.createElement('div');
      div.className = sender;
      div.innerText = text;
      chat.appendChild(div);
      chat.scrollTop = chat.scrollHeight;
    }

    function sendMessage() {
      const input = document.getElementById('userInput');
      const msg = input.value.trim();
      if (!msg) return;
      addMessage('user', msg);
      input.value = '';

      // Demo responses
      setTimeout(() => {
        const text = msg.toLowerCase();
        if (text.includes('earlier test')) {
          addMessage('bot', 'I found a few earlier test slots: Sep 5, Sep 7, Sep 10. Would you like to book one?');
        } else if (text.includes('book')) {
          addMessage('bot', 'Booking confirmed! You’ll receive a notification soon.');
        } else {
          addMessage('bot', 'I can help you find earlier test dates. Try asking "earlier test"!');
        }
      }, 500);
    }
  </script>
</body>
</html>
