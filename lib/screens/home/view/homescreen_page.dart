import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wartegnusantara/screens/component/body.dart';
import 'package:wartegnusantara/screens/home/cubit/homescreen_cubit.dart';
import 'package:wartegnusantara/screens/home/view/homescreen_form.dart';

class HomeScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomeScreen());
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            BodyHome(),
            Spacer(), // it will cover 2/3 of free space
            BlocProvider(
              create: (_) =>
                  HomeScreenCubit(context.read<AuthenticationRepository>()),
              child: HomeScreenForm(),
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
