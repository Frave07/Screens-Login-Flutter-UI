import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';

class IntroLoginOnePage extends StatelessWidget{

 @override
 Widget build(BuildContext context){

    return GestureDetector(
      onHorizontalDragUpdate: (details){
        
        if( details.primaryDelta! < -6 )  Navigator.of(context).pushNamed('getStarted');     
         
      },
      child: Scaffold(
        backgroundColor: Color(0xff2C75DC),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/logo.png', height: 150.0),
              const TextFrave(text: 'Frave Developer', fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)
            ],
          ),
        ),
       ),
    );
  }
}