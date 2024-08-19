import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TransferSucess extends StatelessWidget {
  const TransferSucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Berhasil Transfer',
              textAlign: TextAlign.center,
              style:  
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            const SizedBox(height: 26),
            Text(
              'Use the money wisely and\ngrow your finance',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30,),
            CustomFilledButton(
              title: 'Back to Home',
              width: 230,
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/home-page' ,(route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
