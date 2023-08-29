import 'package:flutter/material.dart';
class Favourite_screen extends StatefulWidget {
  const Favourite_screen({super.key});

  @override
  State<Favourite_screen> createState() => ListScreen();
}

class ListScreen extends State<Favourite_screen> {



  List arrayName=["Screen","Item","Favourite"];

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar:  AppBar(
        title:  Text("Favorite App"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ListView.builder(itemCount: arrayName.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        
            itemBuilder: (BuildContext context, Index) {
            return(
            ListTile(title:
             Text(arrayName.elementAt(Index))));
          
      
          
          
          },
            )
          // ),ListTile(title: Text(   arrayName.elementAt(index),))
      
         
          // Text(arrayName[ index],style: TextStyle(fontSize: 15),),
         
      
        ]),
      ),
      
    );
  }
}