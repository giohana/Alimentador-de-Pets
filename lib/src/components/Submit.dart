
import 'package:flutter/material.dart';

class SubmitBotton extends StatelessWidget {
  //const SubmitBotton({Key key}) : super(key: key);

  final Function ctrl;
  final String title;

  SubmitBotton({
    this.ctrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.1,
      child: Row(children: <Widget>[
        SizedBox(
           width: width * 0.12,
        ),
        Container(
          width: width * 0.75,
         height: height * 0.09,
         
          child: ButtonTheme(
            //minWidth: 200.0,
            //height: 100.0,
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
         width: width * 0.12,
        ),
      ]),
    );
  }
}
