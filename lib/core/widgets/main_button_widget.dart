import 'package:flutter/material.dart';
import 'package:news_app/core/constants/color_const.dart';

class NewsPushButtonWidget extends StatefulWidget {
  String text;
  final String routeName;

  NewsPushButtonWidget({
    Key? key,
    required this.text,
    required this.routeName,
  }) : super(key: key);

  @override
  State<NewsPushButtonWidget> createState() => _NewsPushButtonWidgetState();
}

class _NewsPushButtonWidgetState extends State<NewsPushButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 45,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: NewsColor.mainBlack),
        child: Center(
          child: Text(widget.text,
              style: TextStyle(
                color: NewsColor.mainWhite,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, widget.routeName);
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