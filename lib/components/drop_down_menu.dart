import 'package:flutter/material.dart';
import 'package:flutter_desktop1/controller/obj_controller.dart';
import 'package:get/get.dart';

class MyDropDownButton extends StatefulWidget {
  final List<String> dropDownItems;
  MyDropDownButton({Key key, @required this.dropDownItems}) : super(key: key);

  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  String dropdownValue;
  @override
  void initState() {
    super.initState();
    dropdownValue = widget.dropDownItems[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        // border: Border.all()
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black),
        underline: Container(
          margin: EdgeInsets.zero,
          height: 0,
          color: Colors.grey,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items:
            widget.dropDownItems.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class ObjDropDown extends StatelessWidget {
  final List<String> dropDownItems;
  const ObjDropDown({Key key, @required this.dropDownItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ObjController _objController = Get.put(ObjController());
    return Container(
        height: 30,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: Colors.white,
          // border: Border.all()
        ),
        child: GetBuilder<ObjController>(
          builder: (_) => DropdownButton<String>(
            value: dropDownItems.contains(_.dropDownValue)
                ? _.dropDownValue
                : dropDownItems[0],
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.black),
            underline: Container(
              margin: EdgeInsets.zero,
              height: 0,
              color: Colors.grey,
            ),
            onChanged: (String newValue) {
              _objController.updateDropDownValue(newValue);
            },
            items: dropDownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ));
  }
}
