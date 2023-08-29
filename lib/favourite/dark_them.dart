import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/provider/them_changers.dart';
class DarkThemScreen extends StatefulWidget {
  const DarkThemScreen({super.key});

  @override
  State<DarkThemScreen> createState() => _DarkThemScreenState();
}

class _DarkThemScreenState extends State<DarkThemScreen> {
  
  @override
  Widget build(BuildContext context) {
    final themeChanger=Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar( title: Center(child: Text("subscribe")),),
      body:  Column(children: [
RadioListTile<ThemeMode>(title: Text("Dark Mode"),
        value: ThemeMode.light, groupValue: themeChanger.themeMode , onChanged:themeChanger.setTheme,
      ),
      RadioListTile<ThemeMode>
      (title: Text("Dark Mode"),
        value: ThemeMode.dark, groupValue: themeChanger.themeMode , onChanged:themeChanger.setTheme,
      )
      ],)
      

      
    );
  }
}