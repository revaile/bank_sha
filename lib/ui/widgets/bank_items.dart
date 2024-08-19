import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatelessWidget {
  final String imgageUrl;
  final String title;
  final bool isSelected;
  const BankItem({
    Key? key,
  required this.imgageUrl,
  required this.title,
  this.isSelected = false,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      width: 326,
      height: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imgageUrl,
            height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
            Text(
              '50 mins',
              style: greyTextStyle.copyWith(
                fontSize: 12
              ),
              )
              ],
            )
        ],
      ),
    );
  }
}