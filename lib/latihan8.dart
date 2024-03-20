import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Twitter Profile'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("Menu 1"),
                  ),
                  PopupMenuItem(
                    child: Text("Menu 2"),
                  ),
                  PopupMenuItem(
                    child: Text("Menu 3"),
                  ),
                ];
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blue,
                height: 200,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://pbs.twimg.com/profile_banners/3742082753/1588238027/1500x500',
                        fit: BoxFit.cover, // Add BoxFit attribute
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1255787417463689217/xiLi1KIM_400x400.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'UPN Veteran Jawa Timur',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '@upnvjt_official',
                                style: TextStyle(fontSize: 16, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Follow'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela negara',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Translate bio',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}