import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(Icons.add, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.phone, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [

              // First Card
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundColor: Color(0xffE8DBFF),
                      child: Icon(
                        Icons.icecream,
                        size: 80,
                        color: Colors.deepPurple,
                      ),
                    ),

                    SizedBox(height: 25),

                    Text(
                      "Ice cream is very delicious right?",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 60),

              // Second Card
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundColor: Color(0xffE8DBFF),
                      child: Icon(
                        Icons.code,
                        size: 80,
                        color: Colors.deepPurple,
                      ),
                    ),

                    SizedBox(height: 25),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Programming is not boring if you love it",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
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