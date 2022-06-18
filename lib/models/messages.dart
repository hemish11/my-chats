import 'package:my_chat/models/message.dart';

class Messages {
  List<Message> formatMessages(String string) {
    List<Message> messages = [];

    List<String> messagesList = string.split('\n');

    for (String message in messagesList) {
      if (message[0] == '[') {
        int date = int.parse(message.substring(1, 3));
        int month = int.parse(message.substring(4, 6));
        int year = int.parse(message.substring(7, 9));

        String time = message.substring(11, message.indexOf(']'));
        int hour = int.parse(time.split(':')[0]);
        int minute = int.parse(message.substring(4, 6));
        int second = int.parse(message.substring(7, 9));

        if (!time.contains('AM')) hour += 12;

        String sender = message.substring(
          message.indexOf(']') + 2,
          message.indexOf(':'),
        );
        String content = message.substring(
          message.indexOf(':') + 2,
          message.length - 1,
        );

        messages.add(
          Message(
            DateTime(year, month, date, hour, minute, second),
            sender,
            content,
          ),
        );
      } else {
        messages.last.content = '${messages.last.content!}\n$message';
      }
    }

    return messages;
  }
}
