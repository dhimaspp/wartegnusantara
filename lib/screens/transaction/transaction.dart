import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wartegnusantara/authentication/authentication.dart';
import 'package:wartegnusantara/screens/transaction/avatar.dart';
import 'package:wartegnusantara/screens/component/appbar.dart';

class Transaction extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => Transaction());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AuthenticationBloc bloc) => bloc.state.user);
    return Scaffold(
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomAppBar(),
            const SizedBox(height: 8.0),
            Avatar(photo: user.photo),
            const SizedBox(height: 4.0),
            Text(user.email, style: textTheme.headline6),
            const SizedBox(height: 4.0),
            Text(user.name ?? '', style: textTheme.headline5),
          ],
        ),
      ),
    );
  }
}
