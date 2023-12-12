// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);



import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  List<HotsaleProduct>? hotsaleProducts;

  ProductModel({
    this.hotsaleProducts,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    hotsaleProducts: json["hotsale-products"] == null ? [] : List<HotsaleProduct>.from(json["hotsale-products"]!.map((x) => HotsaleProduct.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "hotsale-products": hotsaleProducts == null ? [] : List<dynamic>.from(hotsaleProducts!.map((x) => x.toJson())),
  };
}

class HotsaleProduct {
  int? id;
  int? hotsaleId;
  int? productId;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? discount;
  String? name;
  String? slug;
  String? description;
  int? typeId;
  int? price;
  int? shopId;
  int? salePrice;
  String? sku;
  int? quantity;
  int? inStock;
  int? isTaxable;
  dynamic shippingClassId;
  String? status;
  String? productType;
  String? purchasePrice;
  String? unit;
  dynamic height;
  dynamic width;
  dynamic length;
  String? image;
  String? gallery;
  dynamic deletedAt;
  dynamic maxPrice;
  dynamic minPrice;
  dynamic deadline;
  dynamic targetSale;
  dynamic delivryDate;
  int? maxQty;
  double? stockQty;
  double? prQty;
  int? orderQty;
  int? targetPrice;

  HotsaleProduct({
    this.id,
    this.hotsaleId,
    this.productId,
    this.createdAt,
    this.updatedAt,
    this.discount,
    this.name,
    this.slug,
    this.description,
    this.typeId,
    this.price,
    this.shopId,
    this.salePrice,
    this.sku,
    this.quantity,
    this.inStock,
    this.isTaxable,
    this.shippingClassId,
    this.status,
    this.productType,
    this.purchasePrice,
    this.unit,
    this.height,
    this.width,
    this.length,
    this.image,
    this.gallery,
    this.deletedAt,
    this.maxPrice,
    this.minPrice,
    this.deadline,
    this.targetSale,
    this.delivryDate,
    this.maxQty,
    this.stockQty,
    this.prQty,
    this.orderQty,
    this.targetPrice,
  });

  factory HotsaleProduct.fromJson(Map<String, dynamic> json) => HotsaleProduct(
    id: json["id"],
    hotsaleId: json["hotsale_id"],
    productId: json["product_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    discount: json["discount"],
    name: json["name"],
    slug: json["slug"],
    description: json["description"],
    typeId: json["type_id"],
    price: json["price"],
    shopId: json["shop_id"],
    salePrice: json["sale_price"],
    sku: json["sku"],
    quantity: json["quantity"],
    inStock: json["in_stock"],
    isTaxable: json["is_taxable"],
    shippingClassId: json["shipping_class_id"],
    status: json["status"],
    productType: json["product_type"],
    purchasePrice: json["purchase_price"],
    unit: json["unit"],
    height: json["height"],
    width: json["width"],
    length: json["length"],
    image: json["image"],
    gallery: json["gallery"],
    deletedAt: json["deleted_at"],
    maxPrice: json["max_price"],
    minPrice: json["min_price"],
    deadline: json["deadline"],
    targetSale: json["target_sale"],
    delivryDate: json["delivry_date"],
    maxQty: json["max_qty"],
    stockQty: json["stock_qty"]?.toDouble(),
    prQty: json["pr_qty"]?.toDouble(),
    orderQty: json["order_qty"],
    targetPrice: json["target_price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "hotsale_id": hotsaleId,
    "product_id": productId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "discount": discount,
    "name": name,
    "slug": slug,
    "description": description,
    "type_id": typeId,
    "price": price,
    "shop_id": shopId,
    "sale_price": salePrice,
    "sku": sku,
    "quantity": quantity,
    "in_stock": inStock,
    "is_taxable": isTaxable,
    "shipping_class_id": shippingClassId,
    "status": status,
    "product_type": productType,
    "purchase_price": purchasePrice,
    "unit": unit,
    "height": height,
    "width": width,
    "length": length,
    "image": image,
    "gallery": gallery,
    "deleted_at": deletedAt,
    "max_price": maxPrice,
    "min_price": minPrice,
    "deadline": deadline,
    "target_sale": targetSale,
    "delivry_date": delivryDate,
    "max_qty": maxQty,
    "stock_qty": stockQty,
    "pr_qty": prQty,
    "order_qty": orderQty,
    "target_price": targetPrice,
  };
}
