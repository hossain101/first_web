import 'package:first_web/controller/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class OtherScreen extends StatelessWidget {
   OtherScreen({super.key});


   final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screen was clicked: ${_counterController.counter.value} times"),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()=>Get.back(), child: Text("Open Home Screen.")),
            
            FloatingActionButton(onPressed: (){
              _counterController.increment();
            }),


            

          ],


        ),

      ),
    );
  }
}
