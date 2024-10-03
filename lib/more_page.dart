import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/profile');
          },
        ),
        title: const Text(
          "Back",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const Card(
                color: Colors.white10,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('images/profile.png'),
                        radius: 30.0,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Coding is fun!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            Text(
                              "Ngoding mudah bukan? BUKAN!",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Skill",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                childAspectRatio: 3.0,
                children: <String>[
                  'React',
                  'Flutter',
                  'Laravel',
                  'Javascript',
                  'Figma',
                  'Vue'
                ].map((String skill) {
                  return GridTile(
                    child: Card(
                      color: Colors.blueGrey,
                      child: Center(
                        child: Text(
                          skill,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '🎯 About',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "Welcome to My Profile",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "What's your name? ",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "My name Muhammad Irsyad Nataprawira",
                isSender: true,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "Who are you?",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text:
                    "I'am a student Of Wikrama Vocational High School Majoring on Software Engineer and Game Developer",
                isSender: true,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "What are you interested in?",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text:
                    "I'm also interested in Web Development and Mobile Development",
                isSender: true,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "What youa are learning?",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "Currently learning Flutter, Dart, and React Native",
                isSender: true,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "What you feel about Flutter?",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text:
                    "I'm so happy learning Flutter for build Multi-cross application",
                isSender: true,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text:
                    "Okay, thank you mate. May your day be filled with joy...",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "Be yourself and never surrender",
                isSender: false,
              ),
              const SizedBox(height: 8),
              _bubbleMessage(
                text: "Aight mate, byeee!",
                isSender: true,
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  '2022 © Muhammad Irsyad Nataprawira',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _bubbleMessage({required String text, required bool isSender}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        isSender ? 64.0 : 16.0,
        4,
        isSender ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isSender ? Colors.blue : Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: TextStyle(
                color: isSender ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
