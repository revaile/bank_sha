import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const  EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/img_logo_light.png',))
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
              ),
          ),
          const SizedBox(
            height: 30,
          ),
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Note : Email Input
             const CustomFromField(
              title: 'Email Addresss'
              ),
              const SizedBox(height: 16,),
              //Note : Password Input
              const CustomFromField(
                title: 'Passwordd',
                obscureText: true,
                ),
              const SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Passwordd',
                  style: blueTextStyle,
              )
              ),
              const SizedBox(height: 30,),
                  CustomFilledButton(
                    title: 'Sign In',
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, '/home-page', (route) => false);
                    },
                    ),
                  const SizedBox(height: 72),
                  CustomTextButton(title: 'Create New Account',
                    onPressed: (){
                      Navigator.pushNamed(context, '/sign-up');
                    },
                   ),
        
            ],
          ),
        ),
        ],
        ),
    );
  }
}