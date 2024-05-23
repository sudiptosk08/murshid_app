import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/app/screen/module/hotel/widget/booking_card.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/widgets/custom_appbar/k_appbar.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title: Text(
          "Hotel",
        ),
        
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: KSizes.hGapSmall,
          vertical: KSizes.vGapMedium,
        ),
        itemCount: 8,
        separatorBuilder: (context, index) => SizedBox(
          height: KSizes.vGapSmall,
        ),
        itemBuilder: (context, index) => BookingCard(
          index: index,
          rightBtn: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
            onPressed: () {},
            child: const Text("Re-Book"),
          ),
        ),
      ),
    );
  }
}
