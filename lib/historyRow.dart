import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          row(),
          row(),
          row(),
          row(),
          row(),
          row(),
        ],
      ),
    );
  }
}

Widget row() {
  var chatImg = "assets/2.jpg";
  var inp = "RS";
  var rs = "50,000";
  return Container(
    color: Colors.white.withOpacity(0.9),
    margin: EdgeInsets.only(top: 10),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[200],
        radius: 30.0,
        backgroundImage: AssetImage(chatImg),
      ),
      title: Text(
        "Mack Book",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Text(
            "23 Reviews",
            style: TextStyle(color: Colors.grey[800]),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow,
          )
        ],
      ),
      trailing: Column(
        children: [
          Text(
            inp,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            rs,
          ),
        ],
      ),
    ),
  );
}