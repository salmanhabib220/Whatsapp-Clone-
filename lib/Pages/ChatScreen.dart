
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/chat_models.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: Dummydata.length,
       itemBuilder: (context,i) => 
       Column(
         children: [
           Divider(
             height: 10,
           ),
           ListTile(
             leading: CircleAvatar(
               foregroundColor: Theme.of(context).primaryColor,
               backgroundColor: Colors.grey,
               backgroundImage: NetworkImage(Dummydata[i].avatarUrl),
             ),
             title: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  Text(
                    Dummydata[i].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                     ),
                  ),
                  Text(
                    Dummydata[i].time,
                    style: TextStyle(
                      fontSize: 12.0, 
                     ),
                  ),
               ],
             ),
             subtitle: Container(
               padding: const EdgeInsets.only(top: 5),
               child: Text(
                 Dummydata[i].message,
                 style: TextStyle(
                   color: Colors.grey, 
                   fontSize: 15.0,
                 ),
               ),
             ),
           ),
         ],
       ),
    );
  }
}
