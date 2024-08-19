import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditePage extends StatelessWidget {
  const ProfileEditePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Photo'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              width: 327,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: whiteColor),
              child: Column(
                children: [
                  CustomFromField(
                    title: 'Username',
                  ),
                  SizedBox(height: 16),
                  CustomFromField(
                    title: 'Full Name',
                  ),
                  SizedBox(height: 16),
                  CustomFromField(
                    title: 'Email Address',
                  ),
                  SizedBox(height: 16),
                  CustomFromField(
                    title: 'Passwordd',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomFilledButton(
                    title: 'Update Now',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context,'/profile-edit-success', (route) => false );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
