import 'package:flutter/material.dart';

import 'chat_detail.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          ConversationItem(
            contactName: 'Dr. Arya',
            message: 'Hallo ',
            time: '10:30 AM',
            unreadCount: 0,
            images: 'assets/images/logo_aplikasi.png',
          ),
          ConversationItem(
            contactName: 'Dr. Dayu',
            message: 'Hallo',
            time: 'Yesterday',
            unreadCount: 0,
            images: 'assets/images/logo_aplikasi.png',
          ),
          ConversationItem(
            contactName: 'Grup : Healty',
            message: 'hallo',
            time: 'Friday',
            unreadCount: 0,
            images: 'assets/images/logo_aplikasi.png',
          ),
          // Add more conversation items here...
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add action when the add button is pressed
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 177, 114, 232), 
      ),
    );
  }
}

class ConversationItem extends StatelessWidget {
  final String contactName;
  final String message;
  final String time;
  final int unreadCount;
  final String images;

  const ConversationItem({
    Key? key,
    required this.contactName,
    required this.message,
    required this.time,
    required this.unreadCount,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(images),
      ),
      title: Text(contactName),
      subtitle: Text(message),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(time),
          if (unreadCount > 0)
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '$unreadCount',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
      onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ChatDetailPage(contactName: contactName),
    ),
  );
      },
    );
  }
}
