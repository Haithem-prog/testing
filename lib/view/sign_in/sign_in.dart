import 'package:book_store/Text_fields/number_text_fields.dart';
import 'package:book_store/common/MyButtonText.dart';
import 'package:book_store/common/MyNavBar.dart';
import 'package:book_store/common/Texts.dart';
import 'package:book_store/common/bordered_container.dart';
import 'package:book_store/common/navbar.dart';
import 'package:book_store/common/snakBar.dart';
import 'package:book_store/view/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:book_store/Text_fields/Text_field.dart';

class Signin extends StatefulWidget {
  Signin({Key? key}) : super(key: key);
  bool reloading = false;
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController phoneNumber = TextEditingController();

  final TextEditingController passwords = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 10),
          child: Image.asset(
            'assets/images/book_store_logo1.png',
            width: 272.86,
            height: 204.65,
          ),
        ),
        Center(child: TextWidget(t: 'Sign in to continue', w: FontWeight.bold, c: Colors.black, z: 27)),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(t: 'Phone Number', w: FontWeight.w500, c: Colors.grey[700], z: 18),
              SizedBox(height: 50, child: MyTextFieldnum(controller: phoneNumber)),
              const SizedBox(height: 24),
              TextWidget(t: 'Password ', w: FontWeight.w500, c: Colors.grey[700], z: 18),
              SizedBox(height: 50, child: MyTextField(controller: passwords, isSecure: true)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextButton(
            onPressed: () async {
              widget.reloading = true;
              setState(() {});
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav()));
                setState(() {});
            },
            child: widget.reloading
                ? const CircularProgressIndicator(
                    color: Colors.amber,
                  )
                : const BorderedContainer(child: MyButtonText(text: 'Sign in')),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(t: 'Not yet registered? ', w: FontWeight.normal, c: Colors.black, z: 16.5),
                GestureDetector(
                  onTap: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: TextWidget(t: 'Register', w: FontWeight.w500, c: Color.fromARGB(255, 14, 132, 172), z: 18.5),
                )
              ],
            ),
          ),
        )
      ]),
    ));
  }
}
