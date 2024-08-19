import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/package_items.dart';
import 'package:flutter/material.dart';

class DataPackage extends StatelessWidget {
  const DataPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 40),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const CustomFromField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(height: 40),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          ),
          const SizedBox(height: 14),
         const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              PackageItems(
                title: '10GB',
                price: 'Rp 218.000',
                isSelected: true,
              ),
              PackageItems(
                title: '25GB',
                price: 'Rp 420.000',
              ),
              PackageItems(
                title: '40GB',
                price: 'Rp 2.500.000',
              ),
              PackageItems(
                title: '99GB',
                price: 'Rp 5.000.000',
              )
            ],
          ),
          const SizedBox(height: 85,),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async{
            if(await Navigator.pushNamed(context, '/pin') == true){
              Navigator.pushNamedAndRemoveUntil(context, '/data-sucess', (route) => false);

            }
            },
          )
        ],
      ),
    );
  }
}
