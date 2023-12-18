import 'package:flutter/material.dart';
import 'package:hdsn/presentation/start_one_screen/start_one_screen.dart';
import 'package:hdsn/presentation/start_two_screen/start_two_screen.dart';
import 'package:hdsn/presentation/start_three_screen/start_three_screen.dart';
import 'package:hdsn/presentation/start_four_screen/start_four_screen.dart';
import 'package:hdsn/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:hdsn/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:hdsn/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:hdsn/presentation/sign_up_eror_screen/sign_up_eror_screen.dart';
import 'package:hdsn/presentation/your_code_screen/your_code_screen.dart';
import 'package:hdsn/presentation/home_one_container_screen/home_one_container_screen.dart';
import 'package:hdsn/presentation/visit_screen/visit_screen.dart';
import 'package:hdsn/presentation/doctors_tab_container_screen/doctors_tab_container_screen.dart';
import 'package:hdsn/presentation/doctor_one_screen/doctor_one_screen.dart';
import 'package:hdsn/presentation/doctor_two_screen/doctor_two_screen.dart';
import 'package:hdsn/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:hdsn/presentation/payment_screen/payment_screen.dart';
import 'package:hdsn/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:hdsn/presentation/chat_two_screen/chat_two_screen.dart';
import 'package:hdsn/presentation/recept_screen/recept_screen.dart';
import 'package:hdsn/presentation/viedo_call_screen/viedo_call_screen.dart';
import 'package:hdsn/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startOneScreen = '/start_one_screen';

  static const String startTwoScreen = '/start_two_screen';

  static const String startThreeScreen = '/start_three_screen';

  static const String startFourScreen = '/start_four_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String signUpErorScreen = '/sign_up_eror_screen';

  static const String yourCodeScreen = '/your_code_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String visitScreen = '/visit_screen';

  static const String doctorsPage = '/doctors_page';

  static const String doctorsTabContainerScreen =
      '/doctors_tab_container_screen';

  static const String doctorOneScreen = '/doctor_one_screen';

  static const String doctorTwoScreen = '/doctor_two_screen';

  static const String thankYouScreen = '/thank_you_screen';

  static const String paymentScreen = '/payment_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String chatTwoScreen = '/chat_two_screen';

  static const String receptScreen = '/recept_screen';

  static const String viedoCallScreen = '/viedo_call_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    startOneScreen: (context) => StartOneScreen(),
    startTwoScreen: (context) => StartTwoScreen(),
    startThreeScreen: (context) => StartThreeScreen(),
    startFourScreen: (context) => StartFourScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signUpOneScreen: (context) => SignUpOneScreen(),
    signUpErorScreen: (context) => SignUpErorScreen(),
    yourCodeScreen: (context) => YourCodeScreen(),
    homeOneContainerScreen: (context) => HomeOneContainerScreen(),
    visitScreen: (context) => VisitScreen(),
    doctorsTabContainerScreen: (context) => DoctorsTabContainerScreen(),
    doctorOneScreen: (context) => DoctorOneScreen(),
    doctorTwoScreen: (context) => DoctorTwoScreen(),
    thankYouScreen: (context) => ThankYouScreen(),
    paymentScreen: (context) => PaymentScreen(),
    chatOneScreen: (context) => ChatOneScreen(),
    chatTwoScreen: (context) => ChatTwoScreen(),
    receptScreen: (context) => ReceptScreen(),
    viedoCallScreen: (context) => ViedoCallScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
