import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItems extends StatelessWidget {
  final String imgageUrl;
  final String name;
  final String username;
  final bool isVerified;
  
  const TransferRecentUserItems ({Key? key,
  required this.imgageUrl,
  required this.name,
  required this.username,
  required this.isVerified,
  }) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imgageUrl,
            width: 45,
            ),
            const SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                  ),
                Text(
                  username,
                  style: greyTextStyle.copyWith(
                    fontSize: 12 ,
                  ),
                  ),
              ],
            ),
            Spacer(),
            // jika isverived true tampilin semua yg row
            if(isVerified)
          Row(
            children: [
                    Icon(
                  Icons.check_circle,
                  color: greenColor,
                  ),
            
              const SizedBox(width: 4,),
              Text(
                'Verified',
                style: greenTextStyle.copyWith(
                  fontSize: 11,
                  fontWeight: medium,
                ),
                ),
            ],
          )
        ],
      ),
    );
  }
}