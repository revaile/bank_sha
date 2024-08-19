import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/data_package_page.dart';
import 'package:bank_sha/ui/pages/data_provider_page.dart';
import 'package:bank_sha/ui/pages/data_success_page.dart';
import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_succes_page.dart';
import 'package:bank_sha/ui/pages/profile_page.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:bank_sha/ui/pages/sign_up_ktp_page.dart';
import 'package:bank_sha/ui/pages/sign_up_page.dart';
import 'package:bank_sha/ui/pages/sign_up_set_page.dart';
import 'package:bank_sha/ui/pages/sign_up_succes_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:bank_sha/ui/pages/topup_amount_page.dart';
import 'package:bank_sha/ui/pages/topup_page.dart';
import 'package:bank_sha/ui/pages/topup_sucess.dart';
import 'package:bank_sha/ui/pages/transfer_amount_page.dart';
import 'package:bank_sha/ui/pages/transfer_page.dart';
import 'package:bank_sha/ui/pages/transfer_succes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
        ),

      ),
      
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in' :(context) => const SignInPage(),
        '/sign-up' :(context) => const SignUpPage(),
        '/sign-up-set-profile' :(context) => const SignUpSetProfilePage(),
        '/sign-up-ktp' :(context) =>const SignUpKtpPage(),
        '/sign-up-succes' : (context) => const SignUpSuccesPage(),
        '/home-page' : (context) => const HomePage(),
        '/profile-page' :(context) => const ProfiePage(),
        '/pin' :(context) => const PinPage(),
        '/profile-edit' :(context) => const ProfileEditePage(),
        '/profile-edit-pin' :(context) => const ProfileEditePinPage(),  
        '/profile-edit-success' : (context) =>const ProfileEditSucessPage(),
        '/topup' :(context) => const ToPUpPage(),
        '/topup-amount':(context) =>  const TopupAmountPage(),
        '/topup-sucess' : (context) => const TopupSucess(),
        '/tranfer' : (context) => const TransferPage(),
        '/transfer-amount' :(context) => const TranferAmountPage(),
        '/transfer-sucess' :(context) => const  TransferSucess (),
        '/data-provider' :(context) => const DataProviderPage(),
        '/data-package' :(context) => const DataPackage(),
        '/data-sucess' :(context) => const DataSucess()

      },
    );
  }
}