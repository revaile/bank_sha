import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditePinPage extends StatelessWidget {
  const ProfileEditePinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit PIN'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.only(top: 40, right: 24, left: 24),
            width: 327,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              children: [
            const  CustomFromField(title: 'Old PIN'),
            const SizedBox(height: 16),
            const CustomFromField(title: 'New PIN'),
            const SizedBox(height: 30),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/profile-edit-success', (route) => false);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
