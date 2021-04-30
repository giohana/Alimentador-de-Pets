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
    this.ctrl,
    {
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
    return Container(
      height: 80,
      child: Row(children: <Widget>[
        SizedBox(
          width: 40,
        ),
        Container(
          width: 280,
          child: TextFormField(
            controller: widget.ctrl,
            keyboardType: widget.keyboard,
            textInputAction: widget.textInputAction,
            focusNode: widget.focusNode,
            obscureText: widget.obscurePassword,
            validator: widget.validator,
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              labelText: widget.label,
              labelStyle: TextStyle(fontSize: 17),
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontSize: 15,
              ),
              border: OutlineInputBorder(),
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
