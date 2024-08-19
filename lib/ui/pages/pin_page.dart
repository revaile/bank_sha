import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  // TextEditingController: Ini adalah sebuah kelas yang digunakan untuk
  // mengontrol dan mengelola teks yang dimasukkan ke dalam widget teks, seperti TextField atau TextFormField.
  final TextEditingController pinControler = TextEditingController(text: '');

  addPin(String number) {
    if (pinControler.text.length < 6) {
      setState(() {
        pinControler.text = pinControler.text + number;
      });
    }
    // print(pinControler.text);

    if (pinControler.text == '123456') {
      // kehalam sebelumnya atau (result yg ditentuin)
      Navigator.pop(context, true);
    }
  }

  deletPin() {
    // ngecek pincontroler tidak boleh kosong
    if (pinControler.text.isNotEmpty) {
      // true lanjutkan
      setState(() {
        // panjang text -1
        // substring(startIndex, endIndex)
        pinControler.text =
            pinControler.text.substring(0, pinControler.text.length - 1);
      });
    }
    // print(pinControler.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(
            height: 36,
          ),
          Center(
            child: Text(
              'Sha PIN',
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
                  // tempat menyimpan inputan
                  controller: pinControler,
                  cursorColor: greyColor,
                  obscureText: true,
                  // tidak boleh di ketik
                  enabled: false,
                  // ubah jadi bintang
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    // // menetapkan hurup
                    // prefixIcon: Text(
                    //   'RP',
                    //   style: whiteTextStyle.copyWith(
                    //       fontSize: 36, fontWeight: medium),
                    // ),
                    // // mengubah warna garis ketika tidak di klik
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor)),
                    // ketika di hover
                    // focusedBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(color: greyColor))
                  ),
                )),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            // jarak spasi
            spacing: 40,
            // jarak spasi atas
            runSpacing: 40,
            children: [
              InputButton(
                title: '1',
                onTap: () {
                  addPin('1');
                },
              ),
              InputButton(
                title: '2',
                onTap: () {
                  addPin('2');
                },
              ),
              InputButton(
                title: '3',
                onTap: () {
                  addPin('3');
                },
              ),
              InputButton(
                title: '4',
                onTap: () {
                  addPin('4');
                },
              ),
              InputButton(
                title: '5',
                onTap: () {
                  addPin('5');
                },
              ),
              InputButton(
                title: '6',
                onTap: () {
                  addPin('6');
                },
              ),
              InputButton(
                title: '7',
                onTap: () {
                  addPin('7');
                },
              ),
              InputButton(
                title: '8',
                onTap: () {
                  addPin('8');
                },
              ),
              InputButton(
                title: '9',
                onTap: () {
                  addPin('9');
                },
              ),
              const SizedBox(
                height: 60,
                width: 60,
              ),
              InputButton(
                title: '0',
                onTap: () {
                  addPin('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deletPin();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: numberBackgroundColor),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
