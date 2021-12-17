
import 'package:flutter/material.dart';
import 'package:nulti_auth/screens/login1/get_started_screen.dart';
import 'package:nulti_auth/screens/login1/intro_login_one_screen.dart';
import 'package:nulti_auth/screens/login1/login_one_screen.dart';
import 'package:nulti_auth/screens/login1/signup_one_screen.dart';
import 'package:nulti_auth/screens/login10/login_ten_screen.dart';
import 'package:nulti_auth/screens/login2/login_two_screen.dart';
import 'package:nulti_auth/screens/login2/signup_two_screen.dart';
import 'package:nulti_auth/screens/login3/logIn_three_screen.dart';
import 'package:nulti_auth/screens/login3/signup_three_screen.dart';
import 'package:nulti_auth/screens/login3/verification_screen.dart';
import 'package:nulti_auth/screens/login4/login_four_screen.dart';
import 'package:nulti_auth/screens/login4/signup_four_screen.dart';
import 'package:nulti_auth/screens/login5/login_five_screen.dart';
import 'package:nulti_auth/screens/login5/register_five_screen.dart';
import 'package:nulti_auth/screens/login6/lofin_six_screen.dart';
import 'package:nulti_auth/screens/login6/register_six_screen.dart';
import 'package:nulti_auth/screens/login7/login_seven_screen.dart';
import 'package:nulti_auth/screens/login8/login_eight_screen.dart';
import 'package:nulti_auth/screens/login9/login_nine_screen.dart';
import 'package:nulti_auth/screens/main_screen.dart';


Map<String, Widget Function(BuildContext)> routes = {

  'mainPage'      : (_) => MainPage(),
  'introPageOne'  : (_) => IntroLoginOnePage(),
  'getStarted'    : (_) => GetStartedPage(),
  'loginOne'      : (_) => LoginOnePage(),
  'signUpOne'     : (_) => SignUpOnePage(),
  'loginTwoPage'  : (_) => LoginTwoPage(),
  'signUpTwo'     : (_) => SignUpTwoPage(),
  'loginThree'    : (_) => LogInThreePage(),
  'signUpThree'   : (_) => SignUpThreePage(),
  'verificationThree'   : (_) => VerificationThreePage(),
  'signInFourPage'    : (_) => LoginFourPage(),
  'signUpFour'        : (_) => SignUpFourPage(),
  'loginFivePage'     : (_) => LoginFivePage(),
  'registerFivePage'  : (_) => RegisterFivePage(),
  'loginSixPage'      : (_) => LoginSixPage(),
  'registerSixPage'   : (_) => RegisterSixPage(),
  'loginSevenPage'    : (_) => LoginSevenPage(),
  'loginEightPage'    : (_) => LoginEightPage(),
  'LoginNinePage'     : (_) => LoginNinePage(),
  'LoginTenPage'      : (_) => LoginTenPage(),

};