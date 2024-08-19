import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/data_provider_items.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  final bool isSelected;
  const DataProviderPage({Key? key, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beli Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_walet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  Text(
                    'Balance: Rp 180.000.000',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
         const DataProviderItem(
            imageUrl: 'assets/img_provider_telkomsel.png',
            title: 'Telkomsel',
          ),
         const DataProviderItem(
            imageUrl: 'assets/img_provider_indosat.png',
            title: 'Indosat Ooredoo',
          ),
         const DataProviderItem(
            imageUrl: 'assets/img_provider_singtel.png',
            title: 'Singtel ID',
            isSelected: true,
          ),
          const SizedBox(
            height: 120,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: (){
              Navigator.pushNamed(context, '/data-package');
            },
          )
        ],
      ),
    );
  }
}
