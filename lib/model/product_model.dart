class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product({required totalSize, required typeId, required offset}) {
    this._totalSize = totalSize;
    this._offset = offset;
    this._typeId = typeId;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? desc;
  double? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updateAt;
  int? typeId;

  ProductModel({
    this.createdAt,
    this.desc,
    this.id,
    this.img,
    this.location,
    this.name,
    this.price,
    this.stars,
    this.typeId,
    this.updateAt,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['created_at'];
    updateAt = json['update_at'];
    typeId = json['type_id'];
  }
}
