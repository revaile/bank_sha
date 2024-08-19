import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFromField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;

  const CustomFromField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.isShowTitle = true,
  }) : super (key: key) ;

  @override
  Widget build(BuildContext context) {
    return  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(isShowTitle)
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                        fontWeight: medium,
                    ),
                  ),
                  if(isShowTitle)
                  const SizedBox(height: 8),
                  TextFormField(
                    //biar tulisannya bintang binntang
                    obscureText: obscureText,
                    controller: controller,
                      decoration: InputDecoration(
                        hintText: !isShowTitle ? title : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                        ),
                        // jarak tulisan didalem
                        contentPadding: const EdgeInsets.all(12),
                      ),
                  ),
                ],
              );
  }
}