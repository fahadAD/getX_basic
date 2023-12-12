import 'package:getx/product_model.dart';
import 'package:http/http.dart';

class Product_api{
 Future <ProductModel?> get_productdata()async{
   var response=await get(Uri.parse("https://grocery.ebasket.com.bd/api/hot-sales"));
    if(response.statusCode==200){
      return productModelFromJson(response.body);
    }else{
      return null;
    }
 }
}