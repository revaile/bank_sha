import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItems extends StatelessWidget {
  final String title;
  final String price;
  final bool isSelected;
  const PackageItems({
    Key? key,
    required this.title,
    required this.price,
    this.isSelected =  false
    }) : super(key: key);
    

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(37),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2
        ),
          color: whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
          ),
          Text(
            price,
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
