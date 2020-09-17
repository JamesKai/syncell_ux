import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_desktop1/controller/light_text_field_controller.dart';

class MyTextField extends StatefulWidget {
  final LightTextController controller;
  MyTextField({@required this.controller});
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
        ),
        width: 65.0,
        height: 30,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: -5,
              child: Container(
                height: 30,
                width: 40,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  controller: widget.controller,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: false,
                    signed: true,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'\d*'))
                  ],
                ),
              ),
            ),
            Positioned(
              left: 45,
              top: 0,
              child: Container(
                height: 30.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: InkWell(
                        child: Icon(
                          Icons.add,
                          size: 12.0,
                        ),
                        onTap: () {
                          int currentValue = int.parse(widget.controller.text);
                          setState(() {
                            currentValue++;
                            widget.controller.text =
                                (currentValue).toString(); // incrementing value
                          });
                        },
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.remove,
                        size: 12.0,
                      ),
                      onTap: () {
                        int currentValue = int.parse(widget.controller.text);
                        setState(() {
                          print("Setting state");
                          currentValue--;
                          widget.controller.text =
                              (currentValue > 0 ? currentValue : 0)
                                  .toString(); // decrementing value
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
