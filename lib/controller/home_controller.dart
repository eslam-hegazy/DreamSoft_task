import 'dart:math';

import 'package:dreamsoft/models/chip_model.dart';
import 'package:dreamsoft/models/product_model.dart';
import 'package:dreamsoft/models/store_model.dart';
import 'package:get/get.dart';

import '../models/details_car_model.dart';

class HomeController extends GetxController {
  List<StoreModel> storeData = [
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/red-luxury-sedan-road_114579-5079.jpg?w=900&t=st=1676933806~exp=1676934406~hmac=2b95a6df0371c2aca29868741fa632547904ab2c5fdf006113f78cc1efddf1ff",
      title: "Audi, NSU",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
      title: "Opel",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/red-black-sport-cars-racing-highway_114579-4069.jpg?w=900&t=st=1676934047~exp=1676934647~hmac=6020c20d8a3dac8aff89548612a0388bf5683219c8921cd6edab43f31588e19a",
      title: "Toyota",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/grey-metallic-jeep-with-blue-stripe-it_114579-4080.jpg?w=900&t=st=1676934108~exp=1676934708~hmac=999e6210a72099e6ed9b2d4e335eef7cc85aa8dd84213d48ffb19e829e2f177b",
      title: "Audi, NSU",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/red-sedan-car-test-drive-highway_114579-4061.jpg?w=900&t=st=1676934181~exp=1676934781~hmac=55fcb820c7bcf1ae3b28ac3151eb1504da29476de9445fe07dd7a7fbc14fd9be",
      title: "Renault",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/luxury-sport-car-with-xenon-lights-front-view-drive-sunset_114579-5063.jpg?w=900&t=st=1676934240~exp=1676934840~hmac=0b3d6482ae6314b5ab75f3ea175664d3a379c90d0c7d86481e92b4bd4cea3493",
      title: "Skoda",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/blue-sport-sedan-parked-yard_114579-5078.jpg?w=900&t=st=1676934297~exp=1676934897~hmac=e6e8a8beb7bcd1c64e8aadc7f87195e874a4715d0176fa5ada0b105d6ad0e9f1",
      title: "Sedan",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/red-luxury-sedan-road_114579-5079.jpg?w=900&t=st=1676933806~exp=1676934406~hmac=2b95a6df0371c2aca29868741fa632547904ab2c5fdf006113f78cc1efddf1ff",
      title: "Audi, NSU",
    ),
    StoreModel(
      image:
          "https://img.freepik.com/free-photo/luxury-sport-car-with-xenon-lights-front-view_114579-5062.jpg?w=900&t=st=1676934354~exp=1676934954~hmac=a695b1a28f196d89791c503af26f0c226448ef48f890774d233910e744efac60",
      title: "Hatchback",
    ),
  ];
  List sliderData = [
    "assets/images/Image6.png",
    "assets/images/Image1.png",
    "assets/images/Image5.png",
    "assets/images/Image11.png",
  ];
  List<ChipModel> chipData = [
    ChipModel(
      id: 1,
      title: "Asian",
      press: false,
    ),
    ChipModel(id: 2, title: "European", press: false),
    ChipModel(id: 3, title: "American", press: false),
  ];
  List<ProductModel> productData = [
    ProductModel(
      title: "JMC",
      type: "Yukon",
      clas: "Fourth category",
      image:
          "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
      price: "12,700",
      date: "2019",
      km: "20000",
      Guaranteed: "2021",
      detailsCarModel: DetailsCarModel(
        outSide_color: "White",
        iutSide_color: "Blue",
        type_disk: "blue",
        sunroof: true,
        camera: true,
        sensor: "Front - rear",
        cylinder: 6,
        motion_vector: "Automatic",
      ),
      moreProduct: [
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/luxury-sport-car-with-xenon-lights-front-view-drive-sunset_114579-5063.jpg?w=900&t=st=1676946624~exp=1676947224~hmac=46cfd7b44b4053d8f01e5f5eb6f7105d3375b6cb824f42d548c5289e14d631d5",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
      ],
    ),
    ProductModel(
      title: "JMC",
      type: "Yukon",
      clas: "Fourth category",
      image:
          "https://img.freepik.com/free-photo/luxury-sport-car-with-xenon-lights-front-view-drive-sunset_114579-5063.jpg?w=900&t=st=1676946624~exp=1676947224~hmac=46cfd7b44b4053d8f01e5f5eb6f7105d3375b6cb824f42d548c5289e14d631d5",
      price: "12,700",
      date: "2019",
      km: "20000",
      Guaranteed: "2021",
      detailsCarModel: DetailsCarModel(
        outSide_color: "White",
        iutSide_color: "Blue",
        type_disk: "blue",
        sunroof: true,
        camera: true,
        sensor: "Front - rear",
        cylinder: 6,
        motion_vector: "Automatic",
      ),
      moreProduct: [
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
      ],
    ),
    ProductModel(
      title: "JMC",
      type: "Yukon",
      clas: "Fourth category",
      image:
          "https://img.freepik.com/premium-photo/black-car-asphalt-road_93200-1613.jpg",
      price: "12,700",
      date: "2019",
      km: "20000",
      Guaranteed: "2021",
      detailsCarModel: DetailsCarModel(
        outSide_color: "White",
        iutSide_color: "Blue",
        type_disk: "blue",
        sunroof: true,
        camera: true,
        sensor: "Front - rear",
        cylinder: 6,
        motion_vector: "Automatic",
      ),
      moreProduct: [
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
      ],
    ),
    ProductModel(
      title: "JMC",
      type: "Yukon",
      clas: "Fourth category",
      image:
          "https://img.freepik.com/free-photo/white-sport-car-with-black-autotuning_114579-4074.jpg?t=st=1676946646~exp=1676947246~hmac=917e6d59ea7046935247c5e02533751558d2c3a0aced9cbc0caa844aa067bc6e",
      price: "12,700",
      date: "2019",
      km: "20000",
      Guaranteed: "2021",
      detailsCarModel: DetailsCarModel(
        outSide_color: "White",
        iutSide_color: "Blue",
        type_disk: "blue",
        sunroof: true,
        camera: true,
        sensor: "Front - rear",
        cylinder: 6,
        motion_vector: "Automatic",
      ),
      moreProduct: [
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
      ],
    ),
    ProductModel(
      title: "JMC",
      type: "Yukon",
      clas: "Fourth category",
      image:
          "https://img.freepik.com/premium-photo/black-executive-car-motion_209729-1489.jpg",
      price: "12,700",
      date: "2019",
      km: "20000",
      Guaranteed: "2021",
      detailsCarModel: DetailsCarModel(
        outSide_color: "White",
        iutSide_color: "Blue",
        type_disk: "blue",
        sunroof: true,
        camera: true,
        sensor: "Front - rear",
        cylinder: 6,
        motion_vector: "Automatic",
      ),
      moreProduct: [
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
      ],
    ),
    ProductModel(
      title: "JMC",
      type: "Yukon",
      clas: "Fourth category",
      image:
          "https://img.freepik.com/free-photo/black-sport-coupe-car-drive-highway_114579-4022.jpg?t=st=1676946680~exp=1676947280~hmac=5dcdaec1909cd78d42a5ea7498edd32fb069c21856bea4f1e70d91b1cbfaa38d",
      price: "12,700",
      date: "2019",
      km: "20000",
      Guaranteed: "2021",
      detailsCarModel: DetailsCarModel(
        outSide_color: "White",
        iutSide_color: "Blue",
        type_disk: "blue",
        sunroof: true,
        camera: true,
        sensor: "Front - rear",
        cylinder: 6,
        motion_vector: "Automatic",
      ),
      moreProduct: [
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
        ProductModel(
          title: "JMC",
          type: "Yukon",
          clas: "Fourth category",
          image:
              "https://img.freepik.com/free-photo/white-offroader-jeep-parking_114579-4007.jpg?w=900&t=st=1676933935~exp=1676934535~hmac=4d4bd7b41a76727b4927550d75bf7484e90d1a31efcd19fc8b4f27f7f888466c",
          price: "12,700",
          date: "2019",
          km: "20000",
          Guaranteed: "2021",
          detailsCarModel: DetailsCarModel(
            outSide_color: "White",
            iutSide_color: "Blue",
            type_disk: "blue",
            sunroof: true,
            camera: true,
            sensor: "Front - rear",
            cylinder: 6,
            motion_vector: "Automatic",
          ),
          moreProduct: [],
        ),
      ],
    ),
  ];
  int notifyNum = 0;
  void changeNotify() {
    notifyNum++;
    update();
  }
}
