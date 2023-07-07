import 'package:flutter/material.dart';
import 'package:news_app/core/components/text_style_comp.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/extensions/context_extens.dart';
import 'package:news_app/core/widgets/app_bar.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({Key? key}) : super(key: key);

  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NewsColor.background,
      appBar: const NewsAppBar(title: 'News 24'),
      body: ListView.builder(itemBuilder: (BuildContext context, index) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 10, right: 10),
              height: context.h * 0.23,

              // color: Colors.red,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: context.h * .18,
                    width: context.h * .18,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://media.istockphoto.com/id/887755698/photo/watercolor-textured-background.jpg?s=612x612&w=0&k=20&c=8bLYqJXZG-8zITqVfTyAXWHMFr5KJs2hRPbtBguSk8o='))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text(
                              'Monarch population soars 4,900 percent since last year in thrilling 2021 western migration',
                              style: NewsTextStyle.controllerTextStyle,
                            )),
                        Text(
                          'By Andy Corbley',
                          style: NewsTextStyle.contentGreyTextStyle,
                        ),
                        Row(children: [
                          Text('Entertainment',
                              style: NewsTextStyle.contentBlueTextStyle),
                          const SizedBox(width: 6),
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: NewsColor.mainGrey,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '1m ago',
                            style: NewsTextStyle.contentGreyTextStyle,
                          ),
                          const SizedBox(width: 20),
                          const Icon(Icons.more_horiz_rounded)
                        ])
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(thickness: .5, color: NewsColor.mainGrey),
            )
          ],
        );
      }),
    );
  }
}
