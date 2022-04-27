import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomShowBtn extends StatelessWidget {
  const CustomShowBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: ()=>Get.defaultDialog(
        title: 'This is Title'.toUpperCase(),
        titleStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
        middleText: 'this is the middle text of thid dialog.you can write anything',
        middleTextStyle: const TextStyle(fontSize: 16),
        backgroundColor: Colors.green[100],
        titlePadding: EdgeInsets.all(size.height/30),
        barrierDismissible: true, //default value is true. try false//
        radius: size.height/50,
      ),
      child: const Text('Click to Show',textScaleFactor: 1.1,),
    );
  }
}