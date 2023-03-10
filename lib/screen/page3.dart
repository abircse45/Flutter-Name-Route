import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  static const routeName = "/page3";
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Center(
        child: Text("${data}"),
      ),

    );
  }
}
