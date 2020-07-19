import 'package:flutter/material.dart';
import 'package:flutter_bill_splitting/app/pages/home/home_page.dart';
import 'package:flutter/services.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light) // Or Brightness.dark
        );
    return MaterialApp(
      title: 'Bill Split',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light // Theme
          ),
      home: Homepage(),
    );
  }
}
