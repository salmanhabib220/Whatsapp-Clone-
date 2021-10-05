class ChatList {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatList({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
  });
}

// ignore: non_constant_identifier_names
List<ChatList> Dummydata = [
  
  new ChatList(
    name: "SALMAN HABIB",
    message: "Flutter",
    time:  "9:00",
    avatarUrl: "images/WhatsApp Image 2021-08-24 at 6.01.22 PM.jpeg",    
  ),
  new ChatList(
    name: "Junaid Ahmad Shahid",
    message: "Laravel",
    time:  "8:30",
    avatarUrl: "images/juniad.jpeg",  
  ),
  new ChatList(
    name: "Usman Shahid",
    message: "React.js",
    time:  "7:00",
    avatarUrl: "images/usman.jpeg",    
  ),
  new ChatList(
    name: "Awais Nasir",
    message: "Senior SQA Specialist",
    time:  "6:00",
    avatarUrl: "images/awais.jpeg",    
  ),
];
