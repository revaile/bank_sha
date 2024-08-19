import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferResulttUserItems extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;
  final bool isSelected;
  const TransferResulttUserItems  ({Key? key,

  required this.imageUrl,
  required this.name,
  required this.username,
  this.isVerified = false,
  this.isSelected = false,

   }) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 42),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2
        ),
        color: whiteColor,
      ),
      child: Column(
        children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imageUrl))
              ),
              child: isVerified ? Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                    ),
                ),
              )
              : null
            ),
            const SizedBox(height: 13),
            Text(
              name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              Text(
                username,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
                )
        ],
      ),
    );
  }
}