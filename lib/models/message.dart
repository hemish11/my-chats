class Message {
  String? content;
  String? date;
  String? sender;

  Message(String raw) {
    final regexp = RegExp(r'(\[.*\])(\s\w.*):(\s\w.*)');
    final match = regexp.firstMatch(raw);

    final dateGroup = match?.group(1);
    final senderGroup = match?.group(2);
    final messageContent = match?.group(3);

    content = messageContent;
    date = dateGroup;
    sender = senderGroup;
  }
}
