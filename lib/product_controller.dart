import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/api_urls.dart';
import 'package:getx/product_model.dart';

class product_controller extends GetxController{

  RxBool loader=false.obs;
var productModel=ProductModel().obs;
Product_api product_api=Product_api();

get_data()async{
 loader.value=true;
 var api_data=await product_api.get_productdata();
productModel.value=api_data!;
loader.value=false;
}

 @override
  void onInit() {
  get_data();
     super.onInit();
  }

}
