import 'package:flutter/material.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/widgets/custom_appbar/k_appbar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title: Text(
          "Settings",
          style: KTextStyles.subtitle1.copyWith(color: KColors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: KSizes.vGapExtraLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: KSizes.hGapLarge,
              right: KSizes.hGapSmall,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Location Share',
                  style: KTextStyles.subtitle1
                      .copyWith(color: KColors.primaryColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: KSizes.hGapMedium,
                    vertical: KSizes.vGapSmall,
                  ),
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 30,
                    cornerRadius: 5.0,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['ON', 'OFF'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapExtraLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: KSizes.hGapLarge,
              right: KSizes.hGapSmall,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Alarm ',
                  style: KTextStyles.subtitle1
                      .copyWith(color: KColors.primaryColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: KSizes.hGapMedium,
                    vertical: KSizes.vGapSmall,
                  ),
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 30,
                    cornerRadius: 5.0,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['ON', 'OFF'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapExtraLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: KSizes.hGapLarge,
              right: KSizes.hGapSmall,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time Zone',
                  style: KTextStyles.subtitle1
                      .copyWith(color: KColors.primaryColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: KSizes.hGapMedium,
                    vertical: KSizes.vGapSmall,
                  ),
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 30,
                    cornerRadius: 5.0,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['ON', 'OFF'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapExtraLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: KSizes.hGapLarge,
              right: KSizes.hGapSmall,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Prayer Time',
                  style: KTextStyles.subtitle1
                      .copyWith(color: KColors.primaryColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: KSizes.hGapMedium,
                    vertical: KSizes.vGapSmall,
                  ),
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 30,
                    cornerRadius: 5.0,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['ON', 'OFF'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: KSizes.vGapExtraLarge,
          ),
        ],
      ),
    );
  }
}
