import 'package:flutter/material.dart';

extension NewsContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get h => mq.size.height;
  double get w => mq.size.width;
}


//! context.h*0.7