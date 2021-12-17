import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class LoginNinePage extends StatelessWidget {

  const LoginNinePage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [
                Container(
                  height: 210,
                  color: Color(0xff22222C),
                ),

                Positioned(
                  top: 110,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      
                    ),
                  ),
                ),

                Positioned(
                  top: 110,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff22222C),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0)),
                       border: Border.all(color: Color(0xff22222C), width: 0)
                    ),
                  ),
                ),

                
                Positioned(
                  top: 160,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0)),
                      border: Border.all(color: Colors.white)
                    ),
                  ),
                ),

                Positioned(
                  top: 55,
                  left: 20,
                  child: Container(
                    height: 70,
                    width: 70,
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
                  top: 75,
                  left: 100,
                  child: const TextFrave(text: 'Welcome Back', fontSize: 25, color: Colors.white)
                ),
              ],
            ),

            _ButtonCustom(text: 'Use Google Account', icon: 'googleIcon.png',),
            const SizedBox(height: 20),
            _ButtonCustom(text: 'Use Facebook Account', icon: 'facebook.png',),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * .35,
                  color: Colors.grey[400]
                ),
                const TextFrave(text: ' Or ', color: Color(0xffA0A5B9), fontSize: 16 ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * .35,
                  color: Colors.grey[400]
                ),
              ],
            ),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  suffixIcon: Icon(Icons.alternate_email_outlined)
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off_outlined)
                ),
              ),
            ),

            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff22222C),
                  borderRadius: BorderRadius.circular(7.0)
                ),
                child: TextButton(
                  child: const TextFrave(text: 'Sign In', color: Colors.white, fontSize: 22 ),
                  onPressed: (){},
                ),
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(color: Color(0xff22222C).withOpacity(.3))
                ),
                child: TextButton(
                  child: const TextFrave(text: 'Sign Up',  color: Colors.black, fontSize: 20 ),
                  onPressed: (){},
                ),
              ),
            )

          ],
        ),
      )
     );
  }
}


class _ButtonCustom extends StatelessWidget {

  final String text;
  final String icon;

  const _ButtonCustom({ required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Color(0xffA0A5B9).withOpacity(0.35), spreadRadius: 1, blurRadius: 20)
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('Assets/$icon', height: 20),
              const SizedBox(width: 15.0),
              TextFrave(text: text, color: Color(0xffA0A5B9), fontSize: 16)
            ],
          ),
        ),
      ),
    );
  }
}