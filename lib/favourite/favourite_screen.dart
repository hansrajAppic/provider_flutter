import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/favourite/my_favourite.dart';
import 'package:provider_flutter/provider/favourite_provider.dart';
class Favourite_screen extends StatefulWidget {
  const Favourite_screen({super.key});

  @override
  State<Favourite_screen> createState() => _Favourite_screenState();
}

class _Favourite_screenState extends State<Favourite_screen> {
 List<int>selectedItem=[];
  @override
  Widget build(BuildContext context) {

   print("build");
    return Scaffold(
      appBar:  AppBar(
        title:  Text("Favorite App"),
        actions: [InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavourite()));
        },
          child: Icon(
            Icons.favorite,color: Colors.red,),
        ),SizedBox(width: 18,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
         
          ListView.builder(itemCount: 100,
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