import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:murshid_app/app/screen/auth/api/auth_api.dart';
import 'package:murshid_app/app/screen/auth/model/auth_model.dart';
import 'package:murshid_app/local_storage/local_storage.dart';
import 'package:murshid_app/routes/routes.dart';

class AuthController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  RxInt selectedTab = 1.obs;

  final loginFormKey = GlobalKey<FormState>();
  final regFormKey = GlobalKey<FormState>();

  RxBool isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;

    Map<String, dynamic> body = {
      "pilgrim_id": loginPilgrimController.text,
      "password": loginPasswordController.text,
    };

    AuthModel? response = await AuthApi.loginApi(body: body);

    if (response != null) {
      LocalStorage.saveApiToken(token: response.data.accessToken);
      LocalStorage.saveUserID(userID: response.data.user.teamId.toString());
      LocalStorage.saveUserName(userName: response.data.user.name);
      Get.offAllNamed(Routes.navigationPage);
    }
    isLoading.value = false;
  }

  // RxList<Country> countries = <Country>[].obs;
  // RxString phoneCode = ''.obs;
  // RxInt countryID = 0.obs;

  // Rx<Country> country = Country(
  //   id: 19,
  //   name: "Bangladesh",
  //   countryCode: "BD",
  //   phoneCode: "+880",
  // ).obs;

  // Future<void> getCountries() async {
  //   AuthApi.countryListApi().then((value) {
  //     if (value != null) {
  //       countries.value = value.data;
  //     }
  //   });
  // }

  // Future<void> register() async {
  //   if (regPassController.text != regConfirmPassController.text) {
  //     ToastMessage.error('Please Check Your Password, Mismatched Password');
  //     return;
  //   }
  //   isLoading.value = true;

  //   Map<String, dynamic> body = {
  //     "phone": regPhoneController.text,
  //     "password": regPassController.text,
  //     "country_id": country.value.id,
  //   };

  //   AuthModel? response = await AuthApi.registrationApi(body: body);

  //   if (response != null) {
  //     LocalStorage.saveApiToken(token: response.data.token);
  //     Get.offAllNamed(Routes.navigationPage);
  //   }
  //   isLoading.value = false;
  // }

  // RxBool isObscureLoginPass = true.obs;
  // RxBool isObscureRegPass = true.obs;
  // RxBool isObscureRegConfirmPass = true.obs;

  TextEditingController loginPilgrimController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
}
