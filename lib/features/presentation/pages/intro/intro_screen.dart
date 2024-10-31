

import 'package:flutter/material.dart';
import 'package:flutter_axborotnoma_new/features/presentation/pages/intro/intro_page.dart';

import '../../../../config/theme/color.dart';
import '../../../../config/theme/strings.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List introList = [
    {
      "title": AppText.introTitle1,
      "subTitle": AppText.introSubTitle1,
      "image": "assets/images/intro_img1.png"
    },
    {
      "title": AppText.introTitle2,
      "subTitle": AppText.introSubTitle2,
      "image": "assets/images/intro_img2.png"
    },
    {
      "title": AppText.introTitle3,
      "subTitle": AppText.introSubTitle3,
      "image": "assets/images/intro_img3.png"
    }
  ];
  int selectPage = 0;
  PageController? controller = PageController();

  @override
  void initState() {
    super.initState();
    controller?.addListener(() {
      var page = controller?.page?.round() ?? 0;
      setState(() {
        selectPage = page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var deviceSize = media.size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                itemCount: introList.length,
                physics: const BouncingScrollPhysics(),
                controller: controller,
                itemBuilder: (context, index) {
                  var obj = introList[index];
                  return IntroPage(deviceSize: deviceSize, obj: obj);
                }),
            selectPage != introList.length - 1
                ? Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 12, top: 24),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      selectPage = introList.length-1;
                      controller?.jumpToPage(selectPage);
                    });
                  },
                  child: Text(
                    AppText.introSkip,
                    style: TextStyle(
                        color: TColor.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            )
                : Container(),
            Container(
              margin: EdgeInsets.only(
                  top: deviceSize.height * 0.55,
                  left: deviceSize.width * 0.5 - 25),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: introList.map((toElement) {
                  int index = introList.indexOf(toElement);
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: selectPage == index
                          ? TColor.primary
                          : TColor.primary.withOpacity(0.5),
                    ),
                  );
                }).toList(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectPage != 0
                        ? TextButton(
                        onPressed: () {
                          setState(() {
                            selectPage--;
                            controller?.jumpToPage(selectPage);
                          });
                        },
                        child: Text(
                          AppText.introPrev,
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ))
                        : Spacer(),
                    MaterialButton(
                      minWidth: 150,
                      height: 44,
                      onPressed: () {
                        setState(() {
                          if(selectPage < introList.length-1){
                            selectPage++;
                            controller?.jumpToPage(selectPage);
                          }else{
                            // Keyingi Screenga o'tiladi
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      color: TColor.primary,
                      child: Text(
                        selectPage == introList.length - 1
                            ? AppText.introEnter
                            : AppText.introNext,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
