import 'dart:convert';
ProductModal productModalFromJson(String str) => ProductModal.fromJson(str,json.decode(str));
String productModalToJson(ProductModal data) => json.encode(data.toJson());
class ProductModal {
  ProductModal({
      String? description,
      String? image,
      String? price,
      String? productTitle,
      String? productID,
      String? variety,
      String? categoryID,}){
    _description = description;
    _image = image;
    _price = price;
    _productTitle = productTitle;
    _productID = productID;
    _variety = variety;
    _categoryID = categoryID;
}

  ProductModal.fromJson(String id,dynamic json) {

    _description = json['Description'];
    _image = json['Image'];
    _price = json['Price'];
    _productTitle = json['ProductTitle'];
    _productID = id;
    _variety = json['Variety'];
    _categoryID = json['categoryID'];
  }
  String? _description;
  String? _image;
  String? _price;
  String? _productTitle;
  String? _productID;
  String? _variety;
  String? _categoryID;

  String? get description => _description;
  String? get image => _image;
  String? get price => _price;
  String? get productTitle => _productTitle;
  String? get productID => _productID;
  String? get variety => _variety;
  String? get categoryID => _categoryID;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Description'] = _description;
    map['Image'] = _image;
    map['Price'] = _price;
    map['ProductTitle'] = _productTitle;
    map['id'] = _productID;
    map['Variety'] = _variety;
    map['categoryID'] = _categoryID;
    return map;
  }

}