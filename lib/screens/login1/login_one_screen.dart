import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class LoginOnePage extends StatelessWidget{

 @override
 Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                  const SizedBox(height: 15),
                  const TextFrave(text:'Welcome Back', fontSize: 24, fontWeight: FontWeight.w600),
                  const SizedBox(height: 10),
                  const TextFrave(text: 'I am happy to see you again, You can ', color: Colors.grey),
                  const SizedBox(height: 5),
                  const TextFrave(text: 'continue where you left off by logging in', color: Colors.grey),
                  const SizedBox(height: 30),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff3f4f6),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.email_outlined),
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff3f4f6),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextFrave(text:'Forgot Password?', color: Color(0xff757999))
                  ),

                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff2C75DC)
                      ),
                      child: Center(
                        child: TextFrave(text:'Sign In', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: TextFrave(text:'Or'),
                  ),

                  const SizedBox(height: 30),
                  
                  _SignInWith(text: 'Google', icon: 'googleIcon'),
                  const SizedBox(height: 15),
                  _SignInWith(text: 'Facebook', icon: 'facebook'),

                  const SizedBox(height: 50),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextFrave(text: 'Don\' have an account?', fontSize: 17, color: Color(0xff757999)),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacementNamed('signUpOne'),
                        child: TextFrave(text: 'Sign Up', fontSize: 17, fontWeight: FontWeight.bold)
                      ),
                    ]
                  )
              ],
            ),
          ),
        ),
      )
     );
  }


}

class _SignInWith extends StatelessWidget {

  final String text;
  final String icon;

  const _SignInWith({ required this.text, required this.icon });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey[300]!)
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Image.asset('Assets/$icon.png', height: 30),
          const SizedBox(width: 60),
          TextFrave(text:'Sign In with $text', color: Color(0xff757999), fontSize: 16, fontWeight: FontWeight.w500),
        ],
      )
    );
  }
}