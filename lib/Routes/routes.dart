
import 'package:flutter/material.dart';

import 'package:nulti_auth/Pages/Login1/GetStarted.dart';
import 'package:nulti_auth/Pages/Login1/IntroPage.dart';
import 'package:nulti_auth/Pages/Login1/LoginOne.dart';
import 'package:nulti_auth/Pages/Login1/SignUpOne.dart';
import 'package:nulti_auth/Pages/Login10/Login.dart';
import 'package:nulti_auth/Pages/Login2/LoginTwo.dart';
import 'package:nulti_auth/Pages/Login2/SignUpTwo.dart';
import 'package:nulti_auth/Pages/Login3/LogInThree.dart';
import 'package:nulti_auth/Pages/Login3/SignUpThree.dart';
import 'package:nulti_auth/Pages/Login3/Verification.dart';
import 'package:nulti_auth/Pages/Login4/SignInFour.dart';
import 'package:nulti_auth/Pages/Login4/SignUpFour.dart';
import 'package:nulti_auth/Pages/Login5/RegisterFive.dart';
import 'package:nulti_auth/Pages/Login5/SignInFive.dart';
import 'package:nulti_auth/Pages/Login6/LoginSix.dart';
import 'package:nulti_auth/Pages/Login6/RegisterSix.dart';
import 'package:nulti_auth/Pages/Login7/LoginSeven.dart';
import 'package:nulti_auth/Pages/Login8/LoginEight.dart';
import 'package:nulti_auth/Pages/Login9/LoginNine.dart';
import 'package:nulti_auth/Pages/MainPage.dart';


Map<String, Widget Function(BuildContext)> routes = {

  'mainPage'      : (_) => MainPage(),
  'introPageOne'  : (_) => IntroPage(),
  'getStarted'    : (_) => GetStartedPage(),
  'loginOne'      : (_) => LoginOnePage(),
  'signUpOne'     : (_) => SignUpOnePage(),
  'loginTwoPage'  : (_) => LoginTwoPage(),
  'signUpTwo'     : (_) => SignUpTwoPage(),
  'loginThree'    : (_) => LogInThreePage(),
  'signUpThree'   : (_) => SignUpThreePage(),
  'verificationThree'   : (_) => VerificationThreePage(),
  'signInFourPage'    : (_) => SignInFourPage(),
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