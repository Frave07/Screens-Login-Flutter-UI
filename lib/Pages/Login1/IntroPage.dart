import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return GestureDetector(
      onHorizontalDragUpdate: (details){
        
         if( details.primaryDelta < -6 )  Navigator.of(context).pushNamed('getStarted');     
         
      },
      child: Scaffold(
        backgroundColor: Color(0xff2C75DC),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/logo.png', height: 120.0),
              Text('Frave Programmer', style: GoogleFonts.getFont('Inter', fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))
            ],
          ),
        ),
       ),
    );
  }
}