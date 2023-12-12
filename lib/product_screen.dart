import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/product_controller.dart';
class ProductPage extends GetView<product_controller> {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {



    return   Scaffold(
      appBar: AppBar(
        title: Text("ProductPage"),
      ),

      
body: Obx(() {
  if(controller.loader.value){
    return Center(child: CircularProgressIndicator());
  }else{
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: controller.productModel.value.hotsaleProducts!.length,
      itemBuilder: (BuildContext context, int index) {
        var data_s=controller.productModel.value.hotsaleProducts![index];
          return ListTile(

            leading: Text("ID:${data_s.productId}"),
            title: Text("Name:${data_s.name}"),


          );
    },

    );
  }
}),
    );
  }
}
