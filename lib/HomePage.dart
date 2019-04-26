import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: new Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 80),
            Row(
              children: <Widget>[
                _button('Show SnackBar', _showSnack)
              ],
            )
          ],
        ),
      )
    );
  }

  final snackBar = SnackBar(
    content: Text("Um SnackBar."),
    action: SnackBarAction(
        label: 'OK',
        onPressed: () {}),
  );

  Widget _button(String label, Function() f) {
    return MaterialButton(
      height: 40.0,
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12.0
        ),
      ),
      onPressed: f,
    );
  }

  void _showSnack() {
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

}