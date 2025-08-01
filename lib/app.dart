import 'package:flutter/material.dart';

import 'package:ruhul_ostab_project/ui/screens/change_password_screen.dart';
import 'package:ruhul_ostab_project/ui/screens/forgot_password_email_screen.dart';
import 'package:ruhul_ostab_project/ui/screens/pages/add_new_task_screen.dart';
import 'package:ruhul_ostab_project/ui/screens/pages/main_nav_bar_holder_screen.dart';
import 'package:ruhul_ostab_project/ui/screens/pages/update_profile_screen.dart';
import 'package:ruhul_ostab_project/ui/screens/pin_verification_screen.dart';
import 'package:ruhul_ostab_project/ui/screens/sign_in_screen.dart';
import 'package:ruhul_ostab_project/ui/screens/splash_screen.dart';


import 'ui/screens/sign_up_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  static GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(vertical: 12),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.green),
        ),
      ),
      initialRoute: '/',
      routes: {
        SplashScreen.name : (context) => SplashScreen(),
        SignInScreen.name: (context) => SignInScreen(),
        SignUpScreen.name: (context) => SignUpScreen(),
        ForgotPasswordEmailScreen.name:
            (context) => const ForgotPasswordEmailScreen(),
        PinVerificationScreen.name: (context) => PinVerificationScreen(emailid: ForgotPasswordEmailScreen.emailid,otpcode: PinVerificationScreen.otp),
        ChangePasswordScreen.name: (context) =>  ChangePasswordScreen(emailid: ForgotPasswordEmailScreen.emailid,otpcode: PinVerificationScreen.otp),
        MainNavBarHolderScreen.name: (context) => const MainNavBarHolderScreen(),
        AddNewTaskScreen.name: (context) => const AddNewTaskScreen(),
        UpdateProfileScreen.name: (context) => const UpdateProfileScreen()
      },
    );
  }
}