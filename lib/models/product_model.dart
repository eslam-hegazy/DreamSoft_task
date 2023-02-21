import 'package:dreamsoft/models/details_car_model.dart';

class ProductModel {
  final String title;
  final String type;
  final String clas;
  final String image;
  final String price;
  final String date;
  final String km;
  final String Guaranteed;
  final DetailsCarModel detailsCarModel;
  final List<ProductModel> moreProduct;
  ProductModel({
    required this.title,
    required this.type,
    required this.clas,
    required this.image,
    required this.price,
    required this.date,
    required this.km,
    required this.Guaranteed,
    required this.detailsCarModel,
    required this.moreProduct,
  });
}
