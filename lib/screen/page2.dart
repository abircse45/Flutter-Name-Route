import 'package:flutter/material.dart';
import 'package:flutter_name_route/screen/page3.dart';

class Page2 extends StatelessWidget {
  static const routeName = "/page2";

  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map message =  ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;
    return  Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(message['Name']),
            Text(message['batch']),
            Text(message['Topic']),

            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, Page3.routeName,
                arguments: message["Name"]

              );
            }, child: Text("3rd Page"))

          ],
        ),
      ),
    );
  }
}
