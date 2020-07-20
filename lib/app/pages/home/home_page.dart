import 'package:flutter/material.dart';
import 'package:flutter_bill_splitting/app/components/card_bill/card_bill_widget.dart';
import 'package:flutter_bill_splitting/app/components/header/header_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Header(
              title: "Split Bill",
            ),
            CardBill()
          ],
        ),
      )),
    );
  }
}
