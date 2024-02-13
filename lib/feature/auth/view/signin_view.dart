import 'package:flutter/material.dart';
import 'package:offer/feature/auth/view/widget/signin_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInBody(),
    );
  }
}