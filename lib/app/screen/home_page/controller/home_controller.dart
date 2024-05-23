import 'package:get/get.dart';
import 'package:murshid_app/app/screen/home_page/view/home_page.dart';
import 'package:murshid_app/app/screen/home_page/view/widget/service_card.dart';
import 'package:murshid_app/routes/routes.dart';
import 'package:murshid_app/utils/assets/k_images.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    specialBanners;
    services;
    categories;
    super.onInit();
  }

  RxBool locationShare = false.obs;
  List<String> specialBanners = [
    KImages.banner1,
    KImages.banner2,
    KImages.banner3,
  ];

  List<ServiceCard> services = [
    ServiceCard(
        serviceName: "Cloth Ironing",
        serviceProviderName: "XYZ IRON AND LAUNDRY",
        rating: "4.7",
        servicePrice: "120",
        serviceImage: KImages.murshidLogo,
        ontap: () {}),
    ServiceCard(
        serviceName: "Home Cleaning",
        serviceProviderName: "Corpo Clean",
        rating: "4.8",
        servicePrice: "1200",
        serviceImage: KImages.murshidLogo,
        ontap: () {}),
    ServiceCard(
        serviceName: "Car Repair",
        serviceProviderName: "Next Gen Automobiles",
        rating: "4.3",
        servicePrice: "600",
        serviceImage: KImages.murshidLogo,
        ontap: () {}),
  ];
  List<CategoryColumn> categories = [
    CategoryColumn(
      name: "Profile",
      icon: KImages.profileSetting,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Kafela",
      icon: KImages.kafela,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Docs",
      icon: KImages.docs,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Hotel",
      icon: KImages.hotel,
      tap: () {
        Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Shuttle",
      icon: KImages.shuttle,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Food",
      icon: KImages.food,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Shop",
      icon: KImages.shop,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Jamarah",
      icon: KImages.jamarah,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
    CategoryColumn(
      name: "Emergency",
      icon: KImages.emergency,
      tap: () {
        // Get.toNamed(Routes.hotelPage);
      },
    ),
  ];
}
