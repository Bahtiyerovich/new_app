import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/core/extensions/context_extens.dart';

class SocialBottomWidget extends StatelessWidget {
  const SocialBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/svg/email.svg'),
            iconSize: 45,
            splashRadius: 1.0,
            onPressed: () {
              Navigator.pushNamed(context, '/signin');
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/google.svg'),
            iconSize: 45,
            splashRadius: 1.0,
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/facebook.svg'),
            iconSize: 45,
            splashRadius: 1.0,
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/twitter.svg'),
            iconSize: 45,
            splashRadius: 1.0,
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/apple.svg'),
            iconSize: 45,
            splashRadius: 1.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SocialBottomFourWidget extends StatelessWidget {
  const SocialBottomFourWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * .07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/svg/google.svg'),
            iconSize: context.h * .06,
            splashRadius: 1.0,
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/facebook.svg'),
            iconSize: context.h * .06,
            splashRadius: 1.0,
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/twitter.svg'),
            iconSize: context.h * .06,
            splashRadius: 1.0,
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/svg/apple.svg'),
            iconSize: context.h * .06,
            splashRadius: 1.0,
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }
}

//! for bilan qilish

