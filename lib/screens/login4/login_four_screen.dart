import 'package:flutter/material.dart';
import 'package:nulti_auth/Widgets/HeaderLoginFour.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class LoginFourPage extends StatelessWidget{

 @override
 Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff313131),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [
                HeaderSignInFour(),
                Positioned(
                  top: 25,
                  right: 0,
                  child: Image.asset('Assets/logo.png', height: 150,)
                ),

                BackGroundSignIn(),

                Positioned(
                  top: 220,
                  left: 20,
                  child: Row(
                    children: [
                      const TextFrave(text: 'Login ', color: Colors.white, fontSize: 25),
                      GestureDetector(
                        child: const TextFrave(text: '/ Sign Up', color: Colors.white, fontSize: 17)
                      ),
                    ],
                  )
                ),
                Positioned(
                  top: 300,
                  left: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email  or Username',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                      ),
                    ))
                ),
                Positioned(
                  top: 380,
                  left: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.grey),
                        suffixIcon: const Icon(Icons.visibility_off_outlined, color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                      ),
                    ))
                ),

                Positioned(
                  top: 450,
                  right: 20,
                  child: TextFrave(text: 'Forgot Pass', color: Colors.yellow)
                ),
                
                Positioned(
                  top: 490,
                  right: 20,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed('signUpFour'),
                    child: Image.asset('Assets/hexagonal.png' , height: 100,)
                  )
                ),
                Positioned(
                  top: 520,
                  right: 50,
                  child: const Icon(Icons.arrow_forward_sharp, size: 40,)
                ),
                
              ],
            )
          ],
        ),
      )
     );
  }
}