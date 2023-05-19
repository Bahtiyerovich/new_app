import 'package:flutter/material.dart';
import 'package:news_app/view/splash/cubit/splash_cubit.dart';
import 'package:news_app/view/splash/state/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/label_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SplashCubit(context),
      child: Scaffold(
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {},
          builder: (context, state) =>
             const Center(child: LabelWidget()),
        ),
      ),
    );
  }
}
