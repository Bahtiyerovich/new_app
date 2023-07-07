import 'package:flutter/material.dart';
import 'package:news_app/view/auth/sign_in/sign_in_page.dart';
import 'package:news_app/view/home/home_page.dart';
import 'package:news_app/view/screens/settings/interests/interests_page.dart';
import 'package:news_app/view/splash/splash_page.dart';

class NewsRoutes {
  static final NewsRoutes _instance = NewsRoutes.init();
  static NewsRoutes get instance => NewsRoutes._instance;
  NewsRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      //? Splash Page
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashPage());

      //? Sign in page
      case '/sign_in':
        return MaterialPageRoute(builder: (_) => const NewsSignInPage());

      //? Home page
      case '/home_page':
        return MaterialPageRoute(builder: (_) => const NewsHomePage());

      //? Settings page
      case '/interests_page':
        return MaterialPageRoute(builder: (_) => const InterestsPage());
    }
  }
}
