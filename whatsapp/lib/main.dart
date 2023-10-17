import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        secondaryHeaderColor: Color(0xFF128C7E),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                },
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'Chats'),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ChatsPage(),
              StatusPage(),
              CallsPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/user1.jpg'),),
          title: Text('John Doe'),
          subtitle: Text('Hello there'),
          trailing: Text('2:30 PM'),
          onTap: () {
          },
        ),
      ],
    );
  }
}

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/user2.jpg'),
          ),
          title: Text('Alice'),
          subtitle: Text('Tap to add status'),
          onTap: () {
          },
        ),
      ],
    );
  }
}

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/user3.jpg'),),
          title: Text('Bob'),
          subtitle: Text('Yesterday, 4:45 PM'),
          trailing: Icon(Icons.call),
          onTap: () {
          },
        ),
      ],
    );
  }
}