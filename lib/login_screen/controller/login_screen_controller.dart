import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  RxString email = ''.obs;
  RxString error = ''.obs;
  var password = ''.obs;
  var errorPass = ''.obs;

  void checkEmailValidation(String value){
    if(value.isEmpty){
      error.value = 'Email can not be Empty';
    }
    else if(!GetUtils.isEmail(value)){
      error.value = 'Enter valid Email';
    }
    else{
      error.value ='';
    }
  }

  void checkPasswordValidation(String value){
    if(value.isEmpty){
      errorPass.value ='Password can not be Empty';
    }
    else if(value.length < 8){
      errorPass.value = 'Enter please At least 8 Character';
    }
    else{
      errorPass.value ='';
    }
  }

  void validationCheck(){
    checkEmailValidation(email.value);
    checkPasswordValidation(password.value);

    if(error.isEmpty && errorPass.isEmpty){
      Get.defaultDialog(
        title: "Login Successful",
        middleText: "You have successfully logged in",
        textConfirm: "OK",
        backgroundColor: Colors.white,

        onConfirm: () {
          Get.back(); // Close the dialog
        },
      );
    }
    else{
      Get.snackbar('Error', 'Please Solve the Error');
    }
  }
}
