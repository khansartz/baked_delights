import '../models/dummy_bundle_model.dart';
import '../models/dummy_product_model.dart';


class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'Choco Cookies',
      weight: '1 Pcs',
      cover: 'https://assets-pergikuliner.com/uploads/bootsy/image/18493/Cookies__hips.hearstapps.com_.jpg',
      images: ['https://assets-pergikuliner.com/uploads/bootsy/image/18493/Cookies__hips.hearstapps.com_.jpg'],
      price: 1300,
      mainPrice: 150,
    ),
    ProductModel(
      name: 'Sweater',
      weight: '1 Pcs',
      cover: 'https://image.uniqlo.com/UQ/ST3/id/imagesgoods/460318/item/idgoods_68_460318.jpg?width=494',
      images: ['https://image.uniqlo.com/UQ/ST3/id/imagesgoods/460318/item/idgoods_68_460318.jpg?width=494'],
      price: 2500,
      mainPrice: 150,
    ),
    ProductModel(
      name: 'Matcha Latte',
      weight: '350 ml',
      cover: 'https://www.siftandsimmer.com/wp-content/uploads/2023/02/iced-matcha-latte-featured.jpg',
      images: ['https://www.siftandsimmer.com/wp-content/uploads/2023/02/iced-matcha-latte-featured.jpg'],
      price: 2400,
      mainPrice: 300,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: 'T(hree)-Shirt',
      cover: 'https://basicamente.com/cdn/shop/files/100009453900001-L1_53589611-2691-4ecf-98e8-5dc3a3ffcccb.jpg?v=1702576976',
      itemNames: ['3 T-Shirt'],
      price: 2000,
      mainPrice: 30,
    ),
    BundleModel(
      name: 'Summer Pack',
      cover: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9yhspQcBZviWezduE5t2BrvTIS3pScYZUxQ&s',
      itemNames: ['4 drinks'],
      price: 3500,
      mainPrice: 400,
    ),
    BundleModel(
      name: 'Freshly Baked',
      cover: 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//91/MTA-49073002/freshly_baked_by_origin_bakery_special_bundling-_coffe_-_signature_bread_full01_zs5reau.jpg',
      itemNames: ['Choco Cookies, Cappucino'],
      price: 3000,
      mainPrice: 450,
    ),
    BundleModel(
      name: 'Afternoon Tea',
      cover: 'https://www.datocms-assets.com/20941/1606229935-the-perfect-afternoon-tea-menu-cover-photo.jpeg?auto=compress&fm=jpg&w=850',
      itemNames: ['All Course, Tea'],
      price: 9000,
      mainPrice: 100,
    ),
  ];
}
