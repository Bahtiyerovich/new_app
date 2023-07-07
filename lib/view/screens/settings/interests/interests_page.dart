import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/core/components/text_style_comp.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/constants/font_const.dart';
import 'package:news_app/core/extensions/context_extens.dart';
import 'package:news_app/core/widgets/app_bar.dart';
import 'package:news_app/core/widgets/main_button_widget.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage({Key? key}) : super(key: key);

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  bool _isAll = true;
  bool _isWorldNews = true;
  bool _isPolitics = true;
  bool _isTechnology = true;
  bool _isScience = true;
  bool _isBusiness = true;
  bool _isEntertainment = true;
  bool _isFood = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewsColor.background,
      appBar: NewsAppBar(
        fontSize: FontConst.small + 2,
        title: 'Interests',
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.h * .04),
          child: Column(
            children: [
              ListTile(
                title: Text('All', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isAll
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isAll = !_isAll;
                    });
                  },
                ),
              ),
              Divider(thickness: .1, color: NewsColor.mainGrey),
              ListTile(
                title: Text('World News', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isWorldNews
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isWorldNews = !_isWorldNews;
                    });
                  },
                ),
              ),
              Divider(thickness: .1, color: NewsColor.mainGrey),
              ListTile(
                title: Text('Politics', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isPolitics
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isPolitics = !_isPolitics;
                    });
                  },
                ),
              ),
              Divider(thickness: .1, color: NewsColor.mainGrey),
              ListTile(
                title: Text('Technology', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isTechnology
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isTechnology = !_isTechnology;
                    });
                  },
                ),
              ),
              Divider(thickness: .1, color: NewsColor.mainGrey),
              ListTile(
                title: Text('Science', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isScience
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isScience = !_isScience;
                    });
                  },
                ),
              ),
              Divider(thickness: .1, color: NewsColor.mainGrey),
              ListTile(
                title: Text('Business', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isBusiness
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isBusiness = !_isBusiness;
                    });
                  },
                ),
              ),
              Divider(thickness: .1, color: NewsColor.mainGrey),
              ListTile(
                title:
                    Text('Entertainment', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isEntertainment
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isEntertainment = !_isEntertainment;
                    });
                  },
                ),
              ),
              Divider(thickness: .1, color: NewsColor.mainGrey),
              ListTile(
                title: Text('Food', style: NewsTextStyle.switchTextStyle),
                trailing: InkWell(
                  child: _isFood
                      ? SvgPicture.asset('assets/svg/toggle.svg')
                      : SvgPicture.asset('assets/svg/toggle_off.svg'),
                  onTap: () {
                    setState(() {
                      _isFood = !_isFood;
                    });
                  },
                ),
              ),
              NewsPushButtonWidget(text: 'Start', routeName: '/home_page')
            ],
          )),
    );
  }
}
