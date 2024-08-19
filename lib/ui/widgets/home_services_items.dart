import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServicesItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeServicesItem  ({Key? key,
  required this.iconUrl,
  required this.title,
  this.onTap,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          //kotak
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsetsDirectional.only(
              bottom: 8
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor
            ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26,
            ),
          ),
          ),
      
          //title
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
            
            )
        ],
      ),
    );
  }
}