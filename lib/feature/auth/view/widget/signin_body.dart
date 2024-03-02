import 'package:flutter/material.dart';
import 'package:offer/core/constant/app_textstyles.dart';
import 'package:offer/core/shared/custom_button.dart';
import 'package:offer/core/shared/custom_text_field.dart';
import 'package:offer/feature/auth/view/widget/dropdownbutton.dart';
import 'package:offer/generated/l10n.dart';

class SignInBody extends StatefulWidget {
  SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        const DropDownButtonWidget(),
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/deliveryman.png'),
          radius: 40,
        ),
        const SizedBox(height: 20),
        CustomTextField(
          paddinghorizantle: 10,
          textEditingController: textEditingController,
          hintText: 'mobile number or email',
          supIcon: IconButton(icon: const Icon(Icons.close), onPressed: () {}),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          paddinghorizantle: 10,
          textEditingController: textEditingController,
          hintText: 'your password ',
          supIcon: IconButton(icon: const Icon(Icons.close), onPressed: () {}),
        ),
        const SizedBox(height: 20),
        CustomButton(
          sideColor: Colors.black,
          paddinghorizantle: 40,
          textStyle: AppTextStyles.textbuttonStyle,
          title: S.of(context).button_login,
          fillColor: Colors.blue,
          onpress: () {},
        ),
        const Spacer(),
        CustomButton(
          textStyle:
              AppTextStyles.textbuttonStyle.copyWith(color: Colors.black),
          paddinghorizantle: 40,
          sideColor: Colors.black,
          title: 'create new acount',
          fillColor: Colors.white,
          onpress: () {},
        ),
        const SizedBox(height: 20),
        Text(
          'OFFER',
          style: AppTextStyles.textStyle22.copyWith(color: Colors.blue),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
