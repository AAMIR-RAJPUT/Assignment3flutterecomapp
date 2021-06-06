import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  // const Input({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            profileImg(),
            inp(),
          ],
        ));
  }
}

Widget profileImg() {
  return Container(
    margin: EdgeInsets.all(20),

    height: 100,
    width: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Colors.lightBlueAccent,
    ),
    child: Icon(
      Icons.person,
      size: 50,
    ),
  );
}

Widget inp() {
  return Container(
      height: 500,
      margin: EdgeInsets.only(top: 30),
      child: Scaffold(
        body: Column(
          children: [
            textfield("FullName", "AAMIR "),
            textfield("Email", "aamirrajput421@gmail.com"),
            textfield("Phone", "03xxxxxxxxx"),
            textfield("Address", "Street, Karachi, Pakistan"),
            textfield("Gender", "Male"),
            textfield("Date of birth", "DD/MM/YY"),
          ],
        ),
      ));
}

Widget textfield(
  String lable,
  String hint,
) {
  return Container(
    height: 70,
    // margin: EdgeInsets.only(top: 10),
    color: Colors.white,
    child: TextField(
      cursorColor: Colors.blue,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.lightBlueAccent,
        border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.yellow)),
        hintText: hint,
        labelText: lable,
      ),
    ),
  );
}