import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class LoginSevenPage extends StatelessWidget{

 @override
 Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                  const SizedBox(height: 20),
                  Center(child: Image.asset('Assets/logo-black.png', height: 90)),
                  const SizedBox(height: 30),
                  _ButtonCustom(text: 'Use Google Account', icon: 'googleIcon.png'),
                  const SizedBox(height: 20),
                  _ButtonCustom(text: 'Use Facebook Account', icon: 'facebook.png'),

                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 1,
                         width: MediaQuery.of(context).size.width * .35,
                        color: Colors.grey[400]
                      ),
                      const TextFrave(text:' Or ', color: Color(0xffA0A5B9), fontSize: 16 ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width * .35,
                        color: Colors.grey[400]
                      ),
                    ],
                  ),

                  const SizedBox(height: 35),
                  const TextFrave(text:'Username', color: Color(0xffA0A5B9), fontSize: 16 ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9))),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9)))
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextFrave(text: 'Password', color: Color(0xffA0A5B9), fontSize: 16 ),
                  const SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9))),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9))),
                      suffixIcon: Icon(Icons.visibility_off_outlined)
                    ),
                  ),

                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Switch(
                          inactiveTrackColor: Color(0xff5B69FE),
                          value: false,
                          onChanged: (value){}
                        ),
                        const TextFrave(text: 'Remenber me', fontSize: 15 ),
                      ]),
                      const TextFrave(text: 'Forgot Password?', fontSize: 15),
                    ],
                  ),

                  const SizedBox(height: 20),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                           Color(0xfff75064),
                           Color(0xffdf3379),
                        ]
                      )
                    ),
                    child: TextButton(
                      child: const TextFrave(text: 'Login', fontSize: 22, color: Colors.white ),
                      onPressed: (){},
                    ),
                  ),

                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextFrave(text: 'Don\'t have an account ? ', fontSize: 15),
                      const TextFrave(text: 'Sign Up',fontSize: 15, color: Color(0xff5B69FE)),
                    ],
                  ),
               ],
            ),
          ),
        ),
      ),
     );
  }
}

class _ButtonCustom extends StatelessWidget {

  final String text;
  final String icon;

  const _ButtonCustom({ required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Color(0xffA0A5B9).withOpacity(0.2), spreadRadius: 1, blurRadius: 20)
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/$icon', height: 20),
            const SizedBox(width: 15.0),
            TextFrave(text: text, color: Color(0xffA0A5B9), fontSize: 16 )
          ],
        ),
      ),
    );
  }
}