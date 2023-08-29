import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/provider/exampe_one_provider.dart';
class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {


  @override
  Widget build(BuildContext context) {
    //  final provider =Provider.of<ExampleOneProvider >(context,listen:false);
    print("build");
    return Scaffold(
      appBar:  AppBar(
        title: Center(child: Text("Subscribe")),
      ),
      body:  Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return Slider(
       min: 0,
       max: 1,
          value:value.value, onChanged: (newValue){
          
           value.setValue(newValue);
      
          
            

        });

          }),
            Consumer<ExampleOneProvider>(builder: (context,value,child){
            return  Row(children: [
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
             
               child: Center(child: Text("Container 1")),
               decoration: BoxDecoration( color: Colors.green.withOpacity(value.value)),
            ),
            
           ),Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
             
             child: Center(child: Text("Container 2")),
             decoration: BoxDecoration( color: Colors.red.withOpacity(value.value)),
            ),
          ),
        ],
        );
 }),

       
      //   Slider(
      //  min: 0,
      //  max: 1,
      //     value: provider.value, onChanged: (newValue){
          
      //       provider.setValue(newValue);
      
          
            

      //   }),
        // Row(children: [
        //   Expanded(
        //     child: Container(
        //       height: 100,
        //       width: double.infinity,
             
        //        child: Center(child: Text("Container 1")),
        //        decoration: BoxDecoration( color: Colors.green.withOpacity(provider.value)),
        //     ),
            
        //    ),Expanded(
        //     child: Container(
        //       height: 100,
        //       width: double.infinity,
             
        //      child: Center(child: Text("Container 2")),
        //      decoration: BoxDecoration( color: Colors.red.withOpacity(provider.value)),
        //     ),
        //   ),
        // ],
        // )

      ],),
    );
  }
}