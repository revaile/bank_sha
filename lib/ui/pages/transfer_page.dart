import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_result_items.dart';
import 'package:bank_sha/ui/widgets/transfer_users_items.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFromField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUser(),
          buildResult(),
          const SizedBox(height: 230),
          CustomFilledButton(
            title: 'Continue',
            onPressed: (){
              Navigator.pushNamed(context, '/transfer-amount');
            },
            ),
            const SizedBox(height: 50,)
        ],
      ),
    );
  }

  Widget buildRecentUser() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItems(
              imgageUrl: 'assets/img_friend1.png',
              name: 'Yonna Jie',
              username: '@yoenna',
              isVerified: true),
          const TransferRecentUserItems(
              imgageUrl: 'assets/img_friend3.png',
              name: 'John Hi',
              username: '@jhi',
              isVerified: false),
          const TransferRecentUserItems(
              imgageUrl: 'assets/img_friend4.png',
              name: 'Masayoshi',
              username: '@form',
              isVerified: false)
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              TransferResulttUserItems(
                imageUrl: 'assets/img_friend1.png',
                name: 'Yonna Jie',
                username: '@yoenna',
                isVerified: false,
              ),
              TransferResulttUserItems(
                imageUrl: 'assets/img_friend3.png',
                name: 'John Hi',
                username: '@form',
                isVerified: true,
                isSelected: true,
              )
            ],
          ),
        ],
      ),
    );
  }
}
