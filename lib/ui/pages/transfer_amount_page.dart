import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TranferAmountPage extends StatefulWidget {
  const TranferAmountPage({super.key});

  @override
  State<TranferAmountPage> createState() => _TranferAmountPageState();
}

class _TranferAmountPageState extends State<TranferAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

    // init state buat formating number -> mendengarkan
    // @override
    // void initState (){
    //   super.initState();

    //   amountController.addListener(() {
    //     final text = amountController.text;

    //     amountController.value = amountController.value.copyWith(
    //       text: NumberFormat.currency(
    //         locale: 'id',
    //         decimalDigits: 0,
    //         symbol: '',
    //       ).format(
    //         int.parse(text.replaceAll('.', '')),
    //       ),
    //     );
    //   });
    // }


  addamount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteamount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
      });
    }
    if (amountController.text == '') {
      amountController.text = '0';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(
            height: 36,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 72,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                // penyimpan variabel
                controller: amountController,
                // tibak bisa di klik
                enabled: false,
                // mengatur style text input
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                    prefixIcon: Text(
                      'RP',
                      style: whiteTextStyle.copyWith(
                        fontSize: 36,
                        fontWeight: medium,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor))),
              ),
            ),
          ),
          const SizedBox(height: 66),
          Wrap(
            runSpacing: 40,
            spacing: 40,
            children: [
              InputButton(
                title: '1',
                onTap: () {
                  addamount('1');
                },
              ),
              InputButton(
                title: '2',
                onTap: () {
                  addamount('2');
                },
              ),
              InputButton(
                title: '3',
                onTap: () {
                  addamount('3');
                },
              ),
              InputButton(
                title: '4',
                onTap: () {
                  addamount('4');
                },
              ),
              InputButton(
                title: '5',
                onTap: () {
                  addamount('5');
                },
              ),
              InputButton(
                title: '6',
                onTap: () {
                  addamount('6');
                },
              ),
              InputButton(
                title: '7',
                onTap: () {
                  addamount('7');
                },
              ),
              InputButton(
                title: '8',
                onTap: () {
                  addamount('8');
                },
              ),
              InputButton(
                title: '9',
                onTap: () {
                  addamount('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              InputButton(
                title: '0',
                onTap: () {
                  addamount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteamount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: numberBackgroundColor, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
          CustomFilledButton(
            title: 'Continiue',
            onPressed: () async {
              if(await Navigator.pushNamed(context, '/pin') == true){
                Navigator.pushNamedAndRemoveUntil(context,  '/transfer-sucess', (route) => false);
              }
            },
          ),
          const SizedBox(height: 25),
          CustomTextButton(
            title: 'Terms & Conditions',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-sucess');
            },
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
