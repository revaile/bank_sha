import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeTipsItem({Key?key,
  required this.imageUrl,
  required this.title,
  required this.url,
  
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        if(await canLaunch(url)){
          launch(url);
        }
      },
      child: Container(
      width: 145,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor
      ),
      child: Column(
        children: [
          // biar atasnya melengkung
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20)
            ),
            child: Image.asset(
              imageUrl,
              width: 145,
              height: 88,
              fit: BoxFit.cover,
              ),
          ),
          const SizedBox(height: 12,),
          Padding(
            // sisi kanan kiri 12 
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
                
              ),
              ),
          )
        ],
      ),
      ),
    );
  }
}