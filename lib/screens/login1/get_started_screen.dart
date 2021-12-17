import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class GetStartedPage extends StatelessWidget{

 @override
 Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('Assets/logo-black.png', height: 180),
                const SizedBox(height: 15),
                const TextFrave(text: 'Frave Developer', fontWeight: FontWeight.bold, fontSize: 25),
                const SizedBox(height: 15),
                const TextFrave(text: 'All news in one place, be the'),
                const TextFrave(text: 'first to know last news'),
              ],
            ),
          ),

          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: InkWell(
              onTap: () => Navigator.of(context).pushNamed('loginOne'),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff2954DE)
                ),
                child: Center(
                  child: TextFrave(text: 'Get Started', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)
                ),
              ),
            ),
          )

        ],
      )
     );
  }
}