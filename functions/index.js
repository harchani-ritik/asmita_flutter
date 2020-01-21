const functions = require('firebase-functions');

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//  response.send("Hello from Firebase!");
// });
const admin = require('firebase-admin');
admin.initializeApp();

exports.createUser = functions.firestore
    .document('updates/{userId}')
    .onCreate((snap, context) => {
      // Get an object representing the document
      // e.g. {'name': 'Marie', 'age': 66}
      const newValue = snap.data();

      // access a particular field as you would any JS property
      const name = newValue.name;
      //  sendMessage(name);
        pushMessage(name);
      // perform desired operations ...

    });
function pushMessage(message) {
  var payload = {
    notification: {
      title: message,
    }
  };

  admin.messaging().sendToTopic("notifications", payload)
  .then(function(response) {
    console.log("Successfully sent message:", response);
    console.log("message was: ", payload);
    return response;
  })
  .catch(function(error) {
    console.log("Error sending message:", error);
   return error;
  });

}
// function sendMessage(message) {
//   webhook.send(message, function(err, header, statusCode, body) {
//     if (err) {
//       console.log('Error:', err);
//     } else {
//       console.log('Received', statusCode, 'from Slack');
//     }
//   });

//}

