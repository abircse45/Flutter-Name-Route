import 'package:flutter/material.dart';
import 'package:flutter_name_route/screen/page2.dart';
import 'package:flutter_name_route/screen/page3.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),

      ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, Page2.routeName,arguments: {
            "Name" : "Flutter Team",
            "batch" : "2nd",
            "Topic" : "Name Route"
          });
          // Navigator.push(context, MaterialPageRoute(builder: (_)=> Page2(message: "ABir Hasan",)));
        }, child: Text("Page 2")),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, Page3.routeName);
        }, child: Text("Page 3")),
      ],
    ),
    ),
    );
  }
}
