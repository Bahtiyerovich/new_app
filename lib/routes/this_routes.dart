import 'package:flutter/material.dart';
import 'package:news_app/view/splash/view/splash_view.dart';

class NewsRoutes {
  static final NewsRoutes _instance = NewsRoutes.init();
  static NewsRoutes get instance => NewsRoutes._instance;
  NewsRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      //? Splash Page
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
