import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Saya',
      theme: ThemeData(
        fontFamily: 'Lexend-Bold',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Profile Saya',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 69, 177, 105),
        ),
        backgroundColor: const Color.fromARGB(255, 41, 40, 40),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Menambahkan border kotak pada gambar
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white, // Warna border
                    width: 3.0, // Ketebalan border
                  ),
                ),
                child: Image.asset('fotoku.jpg', height: 250.0),
              ),
              SizedBox(height: 10),
              Text('Biodata', style: TextStyle(color: Colors.white)),
              Text('Npm : 22411011', style: TextStyle(color: Colors.white)),
              Text('Nama : I Ketut Widiyane',
                  style: TextStyle(color: Colors.white)),
              Text('Universitas Bandar Lampung',
                  style: TextStyle(color: Colors.white))
            ],
          ),
        ));
  }
}
