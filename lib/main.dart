import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uiscreen/MainScreens/createconference.dart';
import 'package:uiscreen/Screens/spalshscreen.dart';
import 'package:uiscreen/MainScreens/joinconference.dart';
import 'package:uiscreen/Providerdata/shared.dart';
import 'package:uiscreen/Providerdata/Meetingdata.dart';

import 'package:uiscreen/Screens/Loginpage.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>AppStatus()),
      ChangeNotifierProvider(create: (_)=>Meetingdata())
    ],

      child:MyApp(),));
}

class MyApp extends StatefulWidget {

  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override

  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner:false,
        home: Splash(),
    );
  }
}
