import 'package:flutter/material.dart';
import 'package:nulti_auth/screens/login10/Widgets/header.dart';
import 'package:nulti_auth/screens/login10/Widgets/logo.dart';
import 'package:nulti_auth/screens/login10/Widgets/text_field_custom.dart';
import 'package:nulti_auth/screens/login10/signup_ten_screen.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class LoginTenPage extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
         padding: EdgeInsets.only(top:0),
         physics: BouncingScrollPhysics(),
         children: [

            Stack(
              children: [

                HeaderLogin(),
                
                LogoHeader()
              ],
            ),

            _Titulo(),

            SizedBox(height: 40),

            _EmailAndPassword(),

            _ForgotPassword(),

            SizedBox(height: 40),

            _BottonSignIn()
         ],
       )
     );
  }
}

class _BottonSignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xff5511b0),
        borderRadius: BorderRadius.circular(50)
      ),
      child: TextButton(
        child: const TextFrave(text: 'SIGN IN', color: Colors.white, fontSize: 18),
        onPressed: (){},
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25, top: 20),
      alignment: Alignment.centerRight,
      child: const TextFrave(text: 'Forgot Password?'),
    );
  }
}

class _EmailAndPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(
        children: [

          TextFieldCustom(icono: Icons.mail_outline, type: TextInputType.emailAddress,texto: 'Email Address' ),
          const SizedBox(height: 20),
          TextFieldCustom(icono: Icons.visibility_off, type: TextInputType.text, pass: true, texto: 'Password'),
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [

          const TextFrave(text: 'SIGN IN', fontSize: 25, fontWeight: FontWeight.bold),

          const TextFrave(text: '/', fontSize: 25, color: Colors.grey),
          
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpTenPage())),
            child: const TextFrave(text: 'SIGN UP', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)
          )

        ],
      ),
    );
  }
}

