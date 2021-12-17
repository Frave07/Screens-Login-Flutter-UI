import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class LoginTwoPage extends StatelessWidget{

 @override
 Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff1f2226),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 20),
                Center(child: Image.asset('Assets/logo.png', height: 150)),
                const SizedBox(height: 20),

                const TextFrave(text: 'Welcome Back', color: Colors.white, fontSize: 32),
                const SizedBox(height: 20),

                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff1b1e21),
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff3AC361),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(
                          child: const TextFrave(text: 'Use Email', color: Colors.white, fontSize: 16)
                        ),
                      ),
                      
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xff1b1e21),
                        ),
                        child: Center(
                          child: TextFrave(text: 'Use phone number', color: Colors.white, fontSize: 16)
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1b1e21),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(20.0))
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1b1e21),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(20.0))
                  ),
                ),

                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.center,
                  child: TextFrave(text: 'Forgot password?', color: Colors.white, fontSize: 16)
                ),

                const SizedBox(height: 20),

                _ButtonCustom(color: Color(0xff3AC361),text: 'Log In'),
                _ButtonCustom(color: Color(0xff2f343a),text: 'Sign Up', onPressed: ()=> Navigator.of(context).pushNamed('signUpTwo'),),

                SizedBox(height: 30),
                const Align(
                  alignment: Alignment.center,
                  child: TextFrave(text: 'Continue as guest', color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      )
     );
  }
}

class _ButtonCustom extends StatelessWidget {
  
  final String text;
  final Color color;
  final VoidCallback? onPressed;

  const _ButtonCustom({ required this.text, required this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 45,
            width: 250,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Center(
              child: TextFrave(text :text, color: Colors.white, fontSize: 16)
            ),
          ),
        ),
      ),
    );
  }
}