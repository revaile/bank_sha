import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSucessPage extends StatelessWidget {
  const ProfileEditSucessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 26),
            Text(
              'Your data is safe with \n our system',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomFilledButton(
              title: 'My Profile',
              width: 190,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/home-page', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
