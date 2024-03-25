import 'package:flutter/material.dart';
// import 'package:flutter_rich/pages/profile_page.dart';
import 'package:flutter_rich/pages/sing_up_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Myhome(),
      home: SingUpPage(),
    );
  }
}
