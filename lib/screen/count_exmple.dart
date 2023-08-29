import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/provider/count_provider.dart';
class Countexmple extends StatefulWidget {
  const Countexmple({super.key});

  @override
  State<Countexmple> createState() => _CountexmpleState();
}

class _CountexmpleState extends State<Countexmple> {
  @override
  Widget build(BuildContext context) {
     final countProvider =Provider.of<CountProvider >(context,listen: true);
     Timer.periodic(Duration(milliseconds: 100), (timer) {
      countProvider.setCount();
      });
      // print("Hello");

    return Scaffold(
      appBar:  AppBar(
        title:  Center(child: Text("subscribe")),
      ),
       body: Center(
        child:Consumer<CountProvider>(builder: (context,value,child){
          print("only this Widget");
          return Text(value.count.toString(),style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),);
        }

        ),),
        // child: Text(countProvider.count.toString(),style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),),

      floatingActionButton: FloatingActionButton(onPressed: (){
        countProvider.setCount();
      },child: Icon(Icons.add),),
    );
  }
}