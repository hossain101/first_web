import 'package:first_web/controller/counterController.dart';
import 'package:first_web/screens/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Obx(
            ()=> Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks: ${counterController.counter.value}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              Get.to(OtherScreen());
            }, child: Text("Open Other Screen")),
            FloatingActionButton(onPressed: (){counterController.increment();})
          ],
        ),
      ),
    );
  }
}
