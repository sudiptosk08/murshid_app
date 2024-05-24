import 'package:flutter/material.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/app/screen/support/view/widget/faq_view_card.dart';

// ignore: must_be_immutable
class SupportPage extends StatelessWidget {
  SupportPage({super.key});
  List contact_us = [
    {
      'img': "assets/icon/travel-agency.png",
      'title': "Agency",
      'info': 'Al Haramine (Bangladesh)'
    },
    {
      'img': "assets/icon/police-badge.png",
      'title': "Police Help Center",
      'info': '+880175233266'
    },
    {
      'img': "assets/icon/call.png",
      'title': "Embulance",
      'info': '+9 88225 03621'
    },
    {
      'img': "assets/icon/add.png",
      'title': "Add Note",
      'info': 'facebook.com'
    },
    {
      'img': "assets/icon/add.png",
      'title': "Note List",
      'info': 'www.twitter.com'
    },
    {
      'img': "assets/icon/whatsapp-logo.png",
      'title': "WhatsApp",
      'info': 'www.twitter.com'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Support Center",
          style: KTextStyles.subtitle1.copyWith(color: KColors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              contact_us.length,
              (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KViewCard(
                          useImage: true,
                          img: contact_us[index]['img'],
                          count: "${contact_us.length}",
                          question: contact_us[index]['title'],
                          ans: contact_us[index]['info'],
                        ),
                      ])),
        ],
      ),
    );
  }
}
