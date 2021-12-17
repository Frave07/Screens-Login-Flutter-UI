import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nulti_auth/Widgets/HeaderLogin3.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class SignUpThreePage extends StatelessWidget{

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff172437),
      body: SingleChildScrollView(
        child: Column(
           children: [

             Stack(
               children: [
                  HeaderSignUpThree(),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: GestureDetector(
                      onTap: ()=> Navigator.pop(context),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)
                        ),
                        child: Icon(Icons.arrow_back_ios_outlined, size: 22, color: Colors.grey[700]),
                      ),
                    )
                  ),
                  Positioned(
                    top: 40,
                    right: 80,
                    child: const Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                  ),
                  Positioned(
                    top: 90,
                    left: 60,
                    child: const Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                  ),
                  Positioned(
                    top: 165,
                    left: 60,
                    child: const TextFrave(text: 'Create Account', color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold)
                  ),
               ],
             ),

             const SizedBox(height: 30),
             _TextFieldCustom( hint: 'Your full name goes here',isPassword: false),
             const SizedBox(height: 20),
             _TextFieldCustom( hint: 'Your email address goes here',isPassword: false),
             const SizedBox(height: 20),
             _TextFieldCustom( hint: 'Your phone number here',isPassword: false),
             const SizedBox(height: 20),
             _TextFieldCustom( hint: 'Your password here',isPassword: false),

             const SizedBox(height: 30),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: InkWell(
                onTap: ()=> Navigator.of(context).pushNamed('verificationThree'),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEFF5),
                    borderRadius: BorderRadius.circular(7.0)
                  ),
                  child: Center(
                    child: TextFrave(text: 'Sign Up', color: Colors.grey[700]!, fontSize: 17)
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            const TextFrave(text:'Or', color: Colors.grey, fontSize: 15),
            const SizedBox(height: 10),
            const TextFrave(text: 'Connect with', color: Colors.grey, fontSize: 15),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(FontAwesomeIcons.google, color: Colors.white),
                const SizedBox(width: 10),
                Container(width: 2, color: Colors.white, height: 20),
                const SizedBox(width: 10),
                const Icon(FontAwesomeIcons.facebook, color: Colors.white),
              ],
            ),

            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextFrave(text: 'Already Have an account? ', color: Colors.grey, fontSize: 15),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('loginThree'),
                  child: const TextFrave(text: 'Sign In', color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold)
                )
              ],
            )

           ],
        ),
      ),
     );
  }
}

class _TextFieldCustom extends StatelessWidget {
  
  final String hint;
  final bool isPassword;

  const _TextFieldCustom({ required this.hint, required this.isPassword });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: isPassword,
        style: TextStyle(color: Colors.white, fontSize: 17),

        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(10.0)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(10.0)),
          labelStyle: TextStyle(color: Colors.white),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
        )
      ),
    );
  }
}