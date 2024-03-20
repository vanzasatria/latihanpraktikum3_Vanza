import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Sample data
  final List<Map<String, String>> userData = [
    {
      "name": "Vanza Satria Pringga Pratama",
      "hobby": "Futsal",
      "image": "https://media.licdn.com/dms/image/D5603AQGXU9TIG-dcxw/profile-displayphoto-shrink_800_800/0/1698165485764?e=1716422400&v=beta&t=ewS3iSDQ_93sMyEjCk8CCgX5kVCE8ZUnvfvKwtUkp68", 
    },
    {
      "name": "Radhyana Gayatri Faradilla",
      "hobby": "Exploring",
      "image": "https://media.licdn.com/dms/image/D4E03AQHK2eaFikUaEQ/profile-displayphoto-shrink_800_800/0/1702395688516?e=1716422400&v=beta&t=d2HHs5Qrzs9AEUXhtyWmoYjREe3cAlILP6XSv0cvMBc", 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Profiles'),
          backgroundColor: Colors.greenAccent,
          
        ),
        body: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (BuildContext context, int index) {
            return UserCard(
              userData: userData[index],
            );
          },
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final Map<String, String> userData;

  UserCard({
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(userData['image']!),
        ),
        title: Text(userData['name']!),
        subtitle: Text(userData['hobby']!),
        trailing: Icon(Icons.more_vert)
      ),
    );
  }
}
