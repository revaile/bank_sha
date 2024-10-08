import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  final String iconUrl;
  final String titlel;
  final String time;
  final String value;


  const HomeLatestTransactionItem ({Key? key,
  required this.iconUrl,
  required this.titlel,
  required this.time,
  required this.value,
  
  
  }): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const  EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 48,
            ),
            const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                titlel,
                style:blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16
                ) ,
                ),
                Text(
                  time,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  )
              ],
            ),
          ),
      
          //amount
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),
          )
        ],
      ),
    );
  }
}