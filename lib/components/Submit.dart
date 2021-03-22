import 'package:flutter/material.dart';

class SubmitBotton extends StatelessWidget {
  //const SubmitBotton({Key key}) : super(key: key);

  var ctrl;
  var title;

  SubmitBotton({
    @required this.ctrl,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(children: <Widget>[
        SizedBox(
          width: 40,
        ),
        Container(
          width: 280,
          height: 50,
          child: ButtonTheme(
            minWidth: 200.0,
            height: 100.0,
            child: ElevatedButton(
              onPressed: ctrl,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlue[600]),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 40,
        ),
      ]),
    );
  }
}
