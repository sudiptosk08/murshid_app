import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';

class KViewCard extends StatefulWidget {
  String count;
  String? ans;
  String? img;
  final String? question;
  bool? useImage;

  KViewCard({
    super.key,
    required this.count,
    required this.ans,
    required this.question,
    this.img,
    this.useImage,
  });

  @override
  // ignore: library_private_types_in_public_api
  _KViewCardState createState() => _KViewCardState();
}

class _KViewCardState extends State<KViewCard> {
  int secondaryIndex = -1;
  int primaryIndex = 0;

  void changeIndex(int index) {
    setState(() {
      secondaryIndex = index;
    });
  }

  void changePrimaryIndex(int index) {
    setState(() {
      primaryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (secondaryIndex == -1) {
              secondaryIndex = 0;
            } else {
              setState(() {
                secondaryIndex = -1;
              });
            }
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: KColors.tranparent.withOpacity(0.2),
                  border: Border.all(
                      width: 1, color: KColors.mute.withOpacity(0.2))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          widget.useImage == true
                              ? Image.asset(
                                  "${widget.img}",
                                  width: 35,
                                  height: 35,
                                  color: KColors.primaryColor,
                                )
                              : Container(),
                          SizedBox(
                            width: widget.useImage == true ? 10.w : 0.w,
                          ),
                          Expanded(
                            child: Text(
                              "${widget.question}",
                              style: KTextStyles.bodyText1
                                  .copyWith(color: KColors.white),
                              maxLines: 6,
                            ),
                          ),
                          secondaryIndex == 0
                              ? const Icon(
                                  Icons.expand_less,
                                  size: 30,
                                  color: KColors.primaryColor,
                                )
                              : const Icon(
                                  Icons.expand_more,
                                  size: 30,
                                  color: KColors.primaryColor,
                                )
                        ]),
                  ),
                  if (secondaryIndex == 0) const SizedBox(height: 7),
                  if (secondaryIndex == 0)
                    Container(
                      padding: EdgeInsets.all(KSizes.hGapMedium),
                      decoration:
                          BoxDecoration(color: KColors.mute.withOpacity(0.2)),
                      width: double.infinity,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              widget.ans!,
                              textAlign: TextAlign.justify,
                              style: KTextStyles.bodyText1
                                  .copyWith(color: KColors.white),
                              maxLines: 6,
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
