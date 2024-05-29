import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:murshid_app/app/screen/hotel/controller/hotel_controller.dart';
import 'package:murshid_app/app/screen/hotel/view/widget/booking_card.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';
import 'package:murshid_app/utils/sizes/k_sizes.dart';
import 'package:murshid_app/utils/text_styles/k_text_styles.dart';
import 'package:murshid_app/widgets/custom_appbar/k_appbar.dart';
import 'package:murshid_app/widgets/custom_button/custom_button.dart';

class HotelPage extends GetView<HotelController> {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: KAppBar(
            title: Text(
              "Hotel",
              style: KTextStyles.subtitle1.copyWith(color: KColors.white),
            ),
          ),
          body: controller.isLoading.value
              ? Container(
                  height: 168.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r)),
                    color: KColors.tranparent.withOpacity(0.5),
                    elevation: 1,
                    shadowColor: KColors.mute.withOpacity(0.3),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: KSizes.vGapSmall,
                        horizontal: KSizes.hGapMedium,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 100.w,
                                    height: 100.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: KColors.mute.withOpacity(0.2),
                                    ),
                                  ),
                                  SizedBox(
                                    width: KSizes.hGapMedium,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 210.w,
                                        height: 15,
                                        color: KColors.mute.withOpacity(0.2),
                                      ),
                                      SizedBox(
                                        height: KSizes.vGapMedium,
                                      ),
                                      Container(
                                        width: 210.w,
                                        height: 15,
                                        color: KColors.mute.withOpacity(0.2),
                                      ),
                                      SizedBox(
                                        height: KSizes.vGapMedium,
                                      ),
                                      Container(
                                        width: 210.w,
                                        height: 15,
                                        color: KColors.mute.withOpacity(0.2),
                                      ),
                                      SizedBox(
                                        height: KSizes.vGapMedium,
                                      ),
                                      Container(
                                        width: 210.w,
                                        height: 15,
                                        color: KColors.mute.withOpacity(0.2),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: KSizes.vGapSmall,
                          ),
                          Expanded(
                            child: CustomButton(
                              btnColor: KColors.mute.withOpacity(0.2),
                              onTap: () {},
                              btnText: "",
                              iconSize: 25,
                              textColor: KColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: KSizes.hGapSmall,
                    vertical: KSizes.vGapMedium,
                  ),
                  itemCount: controller.hotelData.hotelMap.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: KSizes.vGapSmall,
                  ),
                  itemBuilder: (context, index) => BookingCard(
                    index: index,
                    location:
                        controller.hotelData.hotelMap[index].hotel.location,
                    hotelName: controller.hotelData.hotelMap[index].hotel.name,
                    checkIn: controller.hotelData.hotelMap[index].startDate,
                    checkOut: controller.hotelData.hotelMap[index].endDate,
                    lat: controller.hotelData.hotelMap[index].hotel.latitude,
                    long: controller.hotelData.hotelMap[index].hotel.longitude,
                  ),
                ),
        ));
  }
}
