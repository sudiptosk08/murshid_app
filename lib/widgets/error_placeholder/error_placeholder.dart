import 'package:flutter/material.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({
    super.key,
    required this.title,
    this.tryAgain,
  });
  final String title;
  final VoidCallback? tryAgain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              icon: const Icon(
                Icons.refresh_outlined,
                color: KColors.green,
              ),
              onPressed: tryAgain,
              label: Text(
                'Try Again',
                style: KTextStyles.bodyText1.copyWith(
                  color: KColors.green,
                ),
              ),
            ),
            Text(
              'Something Went Wrong!',
              style: KTextStyles.headline2.copyWith(
                color: KColors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
