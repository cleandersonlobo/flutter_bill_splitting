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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Header(
                    title: "Split Bill",
                  ),
                  CardBill(),
                  Container(child: Slider(max: 10, value: 10, onChanged: null)),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        OutlineButton(
                          onPressed: () {},
                          highlightedBorderColor: Colors.green,
                          child: Text("0%"),
                        ),
                        OutlineButton(
                          onPressed: () {},
                          highlightedBorderColor: Colors.green,
                          child: Text("10%"),
                        ),
                        OutlineButton(
                          onPressed: () {},
                          highlightedBorderColor: Colors.green,
                          child: Text("20%"),
                        ),
                        OutlineButton(
                          onPressed: () {},
                          highlightedBorderColor: Colors.green,
                          child: Text("30%"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 1, child: KeyboardBill()),
            Container(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  color: Colors.green[500],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  splashColor: Colors.greenAccent,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "SPLIT BILL",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
