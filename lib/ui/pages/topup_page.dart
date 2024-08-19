import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_items.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ToPUpPage extends StatelessWidget {
  const ToPUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                'assets/img_walet.png',
                width: 80,
                height: 55,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Angga Risky',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        const   SizedBox(height: 14),
         const BankItem(
            imgageUrl: 'assets/img_bank_bca.png',
            title: 'Bank BCA',
          ),
          const BankItem(
            imgageUrl: 'assets/img_bank_bni.png',
            title: 'Bank BNI',
          ),
          const BankItem(
            imgageUrl: 'assets/img_bank_mandiri.png',
            title: 'Bank Mandiri',
          ),
         const BankItem(
            imgageUrl: 'assets/img_bank_ocbc.png',
            title: 'Bank OCBC',
            isSelected: true ,
          ),
          const SizedBox(height: 30),
          CustomFilledButton(
            title: 'Continue',
            onPressed: (){
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          const SizedBox(height: 58),
        ],
      ),
    );
  }
}
