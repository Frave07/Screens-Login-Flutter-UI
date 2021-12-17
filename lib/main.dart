import 'package:flutter/material.dart';
import 'package:nulti_auth/Routes/routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi - Login',
      initialRoute: 'mainPage',
      routes: routes,
    );
  }
}