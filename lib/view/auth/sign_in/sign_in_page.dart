import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/core/components/text_style_comp.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/extensions/context_extens.dart';
import 'package:news_app/core/widgets/label_widget.dart';
import 'package:news_app/core/widgets/main_no_back_button.dart';
import 'package:news_app/core/widgets/social_button_widget.dart';

class NewsSignInPage extends StatefulWidget {
  const NewsSignInPage({Key? key}) : super(key: key);

  @override
  State<NewsSignInPage> createState() => _NewsSignInPageState();
}

class _NewsSignInPageState extends State<NewsSignInPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewsColor.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w * 0.1),
          child: Column(children: [
            const LabelWidget(),
            SizedBox(height: context.h * 0.02),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: NewsTextStyle.contentGreyTextStyle,
                  ),
                  TextFormField(
                    controller: _userNameController,
                  ),
                  SizedBox(height: context.h * 0.025),
                  Text(
                    'Email',
                    style: NewsTextStyle.contentGreyTextStyle,
                  ),
                  TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                          return 'Here should be your e-mail';
                        }
                      }),
                  SizedBox(height: context.h * 0.025),
                  Text(
                    'Password',
                    style: NewsTextStyle.contentGreyTextStyle,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        suffix: InkWell(
                      child: _isObscure
                          ? SvgPicture.asset('assets/svg/eye_open.svg')
                          : SvgPicture.asset('assets/svg/eye_closed.svg'),
                      onTap: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
                  ),
                  SizedBox(height: context.h * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Text(
                          textAlign: TextAlign.end,
                          'Forgot password',
                          style: NewsTextStyle.contentBlackTextStyle,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.h * 0.18,
                    child: Center(
                        child: NewsButtonWidget(
                            text: "Sign In", routeName: '/interests_page')),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: NewsColor.mainBlack,
                        thickness: 1,
                        indent: 10.0,
                        endIndent: 10.0,
                      )),
                      Text(
                        'or sign in with',
                        style: NewsTextStyle.contentBlackTextStyle,
                      ),
                      Expanded(
                          child: Divider(
                        color: NewsColor.mainBlack,
                        thickness: 1,
                        indent: 10.0,
                        endIndent: 10.0,
                      )),
                    ],
                  ),
                  SizedBox(height: context.h * 0.03),
                  const SocialBottomFourWidget(),
                  SizedBox(height: context.h * 0.025),
                  Center(
                    child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Don’t have an account? Register',
                          style: NewsTextStyle.contentBlackTextStyle,
                        )),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
