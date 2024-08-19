import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfiePage extends StatelessWidget {
  const ProfiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Apps',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/img_profile.png'),
                      )),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: whiteColor),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () async {
                    // ketika di pencet ke '/pin', 
                    // lalu true pindah ke page
                    if(await Navigator.pushNamed(context, '/pin') == true){
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_pin.png',
                  title: 'My PIN',
                  onTap: () async {
                    if(await Navigator.pushNamed(context, '/pin') == true){
                      Navigator.pushNamed(context, '/profile-edit-pin');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_walet.png',
                  title: 'Wallet Settings',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_my_reward.png',
                  title: 'My Rewards',
                  onTap: () {
                    Navigator.pushNamed(context, '/home-page');
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_help.png',
                  title: 'Help Center',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Log Out',
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 87),
          CustomTextButton(title: 'Report a Problem', onPressed: (){},),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
