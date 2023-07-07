import 'package:flutter/material.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/extensions/context_extens.dart';

class NewsButtonWidget extends StatefulWidget {
  String text;
  final String routeName;

  NewsButtonWidget({
    Key? key,
    required this.text,
    required this.routeName,
  }) : super(key: key);

  @override
  State<NewsButtonWidget> createState() => _NewsButtonWidgetState();
}

class _NewsButtonWidgetState extends State<NewsButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: context.h * .05,
        width: context.w * .4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: NewsColor.mainBlack),
        child: Center(
          child: Text(widget.text,
              style: TextStyle(
                color: NewsColor.mainWhite,
                fontSize: context.h * 0.017,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
      onTap: () {
        // if (_formKey.currentState!.validate()) {
        Navigator.pushNamedAndRemoveUntil(
            context, widget.routeName, (route) => false);
        // }
      },
    );
  }
}


//  return InkWell(
//       child: Container(
//         height: 40,
//         width: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           color: widget.currentPage == widget.index
//               ? color = NewsColor.mainBlack
//               : color = NewsColor.mainGrey,
//         ),
//         child: FittedBox(
//             child: Text(widget.text,
//                 style: TextStyle(
//                   color: widget.currentPage == widget.index
//                       ? NewsColor.mainWhite
//                       : NewsColor.mainBlack,
//                 ))),
//       ),
//       onTap: () {
//         Navigator.pushNamed(context, widget.routeName);
//       },
//     );