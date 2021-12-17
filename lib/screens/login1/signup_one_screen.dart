import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class SignUpOnePage extends StatelessWidget{

 @override
 Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const SizedBox(height: 10),
              SizedBox(
                height: kToolbarHeight,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const TextFrave(text:'Welcome To Frave', fontSize: 25, fontWeight: FontWeight.bold),
                )
              ),

              const TextFrave(text: 'Hello, I guess you are new around here. You', color: Colors.grey, fontSize: 16),
              const SizedBox(height: 5),
              const TextFrave(text: 'can start using the application after sign up.', color: Colors.grey, fontSize: 16),
              const SizedBox(height: 30),

              _TextFieldCustom(label: 'Username', icon: Icons.person_outline_outlined),
              _TextFieldCustom(label: 'Email Address', icon: Icons.email_outlined),
              _TextFieldCustom(label: 'Password', icon: Icons.lock_outline_rounded),
              _TextFieldCustom(label: 'Repeat Password', icon: Icons.lock_outline_rounded),

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
                    child: const TextFrave(text: 'Sign Up', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextFrave(text: 'Already have an account? ', fontSize: 17, color: Color(0xff757999)),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed('loginOne'),
                        child: const TextFrave(text: 'Sign In', fontSize: 17, fontWeight: FontWeight.bold)
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
     );
  }
}

class _TextFieldCustom extends StatelessWidget {
  
  final String label;
  final IconData icon;

  const _TextFieldCustom({required this.label, required this.icon}); 

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xfff3f4f6),
          hintText: label,
          hintStyle: TextStyle(color: Colors.grey[400]),
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}