import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  //!variabel buat berpindah tampilan
  int curentIndex = 0;

  CarouselController carouselController = CarouselController();

  //! list untuk judul
  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',

    //!list untuk nama sub
  ];
  List<String> subtitles = [
    'Our system is helping you to\nachive a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,

      // !semua elemen yg ada di body itu ketengah
      body: Center(
        //!semua elemen yg ada dibody dibungkus oleh child dan coulum jadi akan ke bawah semua
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // !dibungkus oleh children
          children: [
            // !gambar dimasuka kedalam carousel agar bisa dislide
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/image_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/image_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/image_onboarding3.png',
                  height: 331,
                ),
              ],

              // !
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    curentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),

            // !jark gambar dan kotak bawah
            const SizedBox(
              height: 80,
            ),

            // !membungkus seluruh kotak bawah
            Container(
              // !bats luar kotak
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              // !batas dalam kotak
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              //!membuat kotak
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              // !child ini membungkus titles,subtitles,get sratred, dan sign in
              child: Column(
                children: [
                  Text(
                    // *judul mengikuti curren index saat ini
                    titles[curentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[curentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: curentIndex == 2 ? 38 : 50,
                  ),
                  // *pengkondisian buat coulm
                  curentIndex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Get Started',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/sign-up', (route) => false);
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextButton(
                              title: 'Sign In',
                              onPressed: (){
                                Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
                              },
                              )
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //*kalo 0 blue collor kalo tidak light
                                color: curentIndex == 0
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: curentIndex == 1
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: curentIndex == 2
                                    ? blueColor
                                    : lightBackgroundColor,
                              ),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              title: 'Continnue',
                              width: 150,
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
