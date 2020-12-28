import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wartegnusantara/authentication/authentication.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            )
          ]),
      child: Row(
        children: <Widget>[
          Text(
            "Warteg Nusantara".toUpperCase(),
            style: TextStyle(
                fontFamily: "Ambit",
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          Spacer(),
          MenuAppBar(title: "Transaksi", press: () {}),
          MenuAppBar(title: "Profile", press: () {}),
          MenuAppBar(title: "Laporan", press: () {}),
          MenuAppBar(
              title: "Logout",
              press: () => context
                  .read<AuthenticationBloc>()
                  .add(AuthenticationLogoutRequested())),
        ],
      ),
    );
  }
}

class MenuAppBar extends StatelessWidget {
  final String title;
  final Function press;
  const MenuAppBar({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(title,
            style: TextStyle(
                fontFamily: "Ambit",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.3))),
      ),
    );
  }
}
