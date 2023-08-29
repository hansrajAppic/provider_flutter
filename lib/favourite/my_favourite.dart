import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favourite_provider.dart';
class MyFavourite extends StatefulWidget {
  const MyFavourite({super.key});

  @override
  State<MyFavourite> createState() => _MyFavouriteState();
}

class _MyFavouriteState extends State<MyFavourite> {
  @override
  Widget build(BuildContext context) {
    final favouriteItemProvider=Provider.of<FavouriteItemProvider>(context);

   print("build");
    return Scaffold(
      appBar:  AppBar(
        title:  Text("Favorite App"),
        actions: [InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavourite()));
        },
          child: Icon(
            Icons.favorite,color: Colors.red,),
            
        ),
        SizedBox(width: 9,),
        ],
        
      ),
      body: SingleChildScrollView(
        child: Column(children: [
         
          ListView.builder(itemCount: favouriteItemProvider.selectedItem.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        
            itemBuilder: (BuildContext context, Index) {
            return(
              Consumer<FavouriteItemProvider>(builder: (context,value,child){
                return ListTile(onTap: (){
                  if (value.selectedItem.contains(Index)){
                    value.removeItem(Index);

                  } else{
                      value.addItem(Index);
                  }
             
               
                  
                
              },
                 title: Text("item"+Index.toString(),),
                  trailing: Icon(value.selectedItem.contains(Index)?Icons.favorite:
                    Icons.favorite_outline),
                    
              
        
          );

              },)
            );
          //    ListTile(onTap: (){
          //     favouriteProvider.addItem(Index);
          //       setState(() {
                  
          //       });
          //     },
          //        title: Text("item"+Index.toString(),),
          //         trailing: Icon(favouriteProvider.selectedItem.contains(Index)?Icons.favorite:
          //           Icons.favorite_outline),
                    
              
          // ));
          
      
          
          
          },
            )
          // ),ListTile(title: Text(   arrayName.elementAt(index),))
      
         
          // Text(arrayName[ index],style: TextStyle(fontSize: 15),),
         
      
        ]),
      ),
      
    );
  }
}