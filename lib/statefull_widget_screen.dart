import 'package:flutter/material.dart';
class StatufullScrren extends StatefulWidget {
  const StatufullScrren({super.key});

  @override
  State<StatufullScrren> createState() => _StatufullScrrenState();
}

class _StatufullScrrenState extends State<StatufullScrren> {

  
 int counts
  = 0;
  bool loding = false;
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar:  AppBar(
        title: Text("Subscribe"),
      ),
body:  Column(
  children: [
    SizedBox(height: 200,),
    Text( DateTime.now().toString()),
    SizedBox(height: 15,),
   
   Center(child: Text(counts
   .toString(),style: TextStyle(fontSize: 17))),

  ]
   
),
floatingActionButton: FloatingActionButton(onPressed: (){
  counts
  ++;
  print(counts
  ++);
  setState(() {
    
  });
  
},child: Icon(Icons.add),
),

    );
  }
}