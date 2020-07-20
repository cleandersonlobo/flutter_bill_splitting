import 'package:flutter/material.dart';
import 'package:flutter_bill_splitting/app/components/card_bill/card_bill_widget.dart';
import 'package:flutter_bill_splitting/app/components/header/header_widget.dart';
import 'package:flutter_bill_splitting/app/components/keyboard/keyboard_widget.dart';

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
            CardBill(),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  OutlineButton(
                    onPressed: () {},
                    child: Text("0%"),
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text("10%"),
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text("20%"),
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text("30%"),
                  )
                ],
              ),
            ),
            KeyboardBill()
          ],
        ),
      )),
    );
  }
}
