import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wartegnusantara/screens/component/body.dart';
import 'package:wartegnusantara/screens/home/sign_up/cubit/sign_up_cubit.dart';
import 'package:wartegnusantara/screens/home/sign_up/sign_up.dart';

class SignUpPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/homescreen.webp",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            BodyHome(),
            Spacer(), // it will cover 2/3 of free space
            BlocProvider(
              create: (_) =>
                  SignUpCubit(context.read<AuthenticationRepository>()),
              child: SignUpForm(),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
