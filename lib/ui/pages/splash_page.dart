
import "dart:async";
import "package:bank_sha/shared/theme.dart";
import "package:flutter/material.dart";

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 2), (){
      //route
      //menggunakan ini ketika diback tidak bisa kembali ke pagge sebelumnya
      Navigator.pushNamedAndRemoveUntil(context, '/onboarding', (route) => false);
 });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,

      //! body dibungkus center agar ketengah
      body: Center (
        //!buat child agar menampung gambar
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/image_logo_dark.png',
              ),
            )
          ),
        ),
      ),
    );
  }
}
