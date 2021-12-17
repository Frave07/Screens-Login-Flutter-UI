import 'package:flutter/material.dart';
import 'package:nulti_auth/screens/login8/draggable_scroll_custom.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class LoginEightPage extends StatelessWidget{

  const LoginEightPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff353759),
      body: Stack(
         children: [

          Container(
            height: 250,
            color: Color(0xff0385DC),
            
          ),

          Positioned(
            top:150,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
                color: Color(0xff353759)
              ),
            ),
          ),

          Positioned(
            top: 110,
            left: 140,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Image.asset('Assets/logo-black.png',),
              )
            ),
          ),

          Positioned(
            top: 220,
            left: 120,
            child: const TextFrave(text: 'Welcome Back', fontSize: 21, color: Color(0XFF888AAE))
          ),

          Positioned(
            top: 270,
            left: 105,
            child: const TextFrave(text: 'Frave Developer', fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),

          Positioned(
            top: 320,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 420,
            left: 40,
            right: 40,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xff0385DC),
              ),
              child: TextButton(
                child: const TextFrave(text: 'Log In', fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                onPressed: (){},
              ),
            ),
          ),

          Positioned(
            top: 500,
            left: 40,
            right: 40,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xff2E2F4D),
              ),
              child: TextButton(
                child: const TextFrave(text: 'Another Account', fontSize: 22, color: Color(0XFF888AAE), fontWeight: FontWeight.bold),
                onPressed: (){},
              ),
            ),
          ),
           

          DraggableScrollableSheet(
            initialChildSize: 0.10,
            minChildSize: 0.10,
            maxChildSize: 0.85,
            builder: ( _, s) =>  DraggableScrollCustom(scrollController: s)
          )

         ],
      ),
     );
  }
}