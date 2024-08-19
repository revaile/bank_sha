import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class DataProviderItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isSelected;
  const DataProviderItem ({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.isSelected = false,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom:  18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor 
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
           imageUrl,
            height: 30,
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold
                ),
                ),
                Text(
                  'Available',
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
