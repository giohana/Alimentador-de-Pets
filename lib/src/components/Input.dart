import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  //const Input({Key key}) : super(key: key);
  final TextEditingController ctrl;
  final TextInputType keyboard;
  final String label;
  final bool obscurePassword;
  final String hint;
  final FormFieldValidator<String> validator;
  final TextInputAction textInputAction;
  final FocusNode focusNode;

  Input(
    this.keyboard,
    this.label,
    this.ctrl, {
    this.obscurePassword = false,
    this.hint,
    this.validator,
    this.textInputAction,
    this.focusNode,
  });

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.15,
      child: Row(children: <Widget>[
        SizedBox(
          width: width * 0.12,
        ),
        Container(
          width: width * 0.75,
          child: TextFormField(
            controller: widget.ctrl,
            keyboardType: widget.keyboard,
            textInputAction: widget.textInputAction,
            focusNode: widget.focusNode,
            obscureText: widget.obscurePassword,
            validator: widget.validator,
            style: TextStyle(
              fontSize: 25,
            ),
            decoration: InputDecoration(
              labelText: widget.label,
              labelStyle: TextStyle(fontSize: 20),
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontSize: 16,
              ),
              border: OutlineInputBorder(),
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
