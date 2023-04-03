

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:musicapp/playlistPage.dart';
import 'music.dart';
import 'musicPage.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       routes:{
        "/":((context) => Home()),
        "playlistPage":(context) => PlaylistPage(),
        "musicPage":(context) => MusicPage(),
      }
    );
  }
}


