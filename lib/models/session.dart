// fileContent = stringFromFile();

// const splitMessages =  fileContent.split("\n");
// prev_message_timestamp;
// const s = new Session()
// messagesSent[];

// map = { "11-06-2022": [ { "interval": "13:00-13:30", "count": 75 } ] }

// for message in splitMessages

//     addToTimeInterval(message);

//     messageInstance = new Message(message);
//     if messageInstance.sent_time - prev_message_timestamp > 1hr
//         s = new Session

//     s.addMessage(messageInstance)

class Session {
  late DateTime from;
  late DateTime to;
  List participants = [];
  List messages = [];

  void addMessage(message) {
    messages.add(message);
    // recalculateToTime(message);
    // reconcileParticipants(message);
  }
}
