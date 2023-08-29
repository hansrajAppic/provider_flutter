  import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/favourite/dark_them.dart';
import 'package:provider_flutter/favourite/favourite_screen.dart';
import 'package:provider_flutter/provider/count_provider.dart';
import 'package:provider_flutter/provider/exampe_one_provider.dart';
import 'package:provider_flutter/provider/favourite_provider.dart';
import 'package:provider_flutter/provider/them_changers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,) {
    // final themeChanger=Provider.of<ThemeChanger>(context);
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) =>CountProvider()),
      ChangeNotifierProvider(create: (_) =>ExampleOneProvider()),
      ChangeNotifierProvider(create: (_) =>FavouriteItemProvider()),
       ChangeNotifierProvider(create: (_) =>ThemeChanger()),
    ],
      // create: (_)=>CountProvider(),
 child:Builder(builder: (BuildContext context){
  final themeChanger=Provider.of<ThemeChanger>(context);
  return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      themeMode: themeChanger.themeMode,
       theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:  DarkThemScreen (), );
      
      // ignore: prefer_const_constructors
    
       

    

 }
    ));
    
  }
}

