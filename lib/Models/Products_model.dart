class ProductModel
{
  List<dynamic>Products;

  ProductModel({required this.Products});

  factory ProductModel.fromJson(Map<String ,dynamic>json)
  {
    List<dynamic>fulldata=[];
    fulldata=fulldata.map(
        (product)
            {
              return
                  {
                    "image":product['image'],
                    "name":product['name'],
                    "price":product['price'],
                  };
            }

    ).toList();

    return ProductModel(Products:fulldata);
  }
}