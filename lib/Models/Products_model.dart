class ProductModel
{
  List<dynamic>Products;

  ProductModel({required this.Products});

  factory ProductModel.fromJson(Map<String ,dynamic>json)
  {
    return ProductModel(Products:json['products']);
  }
}