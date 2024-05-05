// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controller/cart/cart_controller.dart';
// import '../../../core/constant/color.dart';
// import '../../../core/constant/routes.dart';
// import '../../../core/services/services.dart';
// import '../../../data/model/cart_model.dart';
// import '../../../likeapi.dart';
//
// class ListCart extends GetView<CartControllerImp> {
//   const ListCart({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(CartControllerImp());
//     return GetBuilder<CartControllerImp>(
//         init: Get.put(CartControllerImp()),
//         builder: (controller) => ListView.separated(
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               physics: const BouncingScrollPhysics(),
//               shrinkWrap: true,
//               reverse: true,
//               itemCount: controller.cart.length,
//               itemBuilder: (context, index) {
//                 return ListCartView(
//                   cartModel: CartModel.fromJson(controller.cart[index]),
//                 );
//               },
//               separatorBuilder: (BuildContext context, int index) =>
//                   const SizedBox(
//                 height: 10,
//               ),
//
//             ));
//   }
// }
//
// class ListCartView extends StatelessWidget {
//   final CartModel cartModel;
//
//   const ListCartView({Key? key, required this.cartModel}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     MyServices myServices = Get.find();
//     int q;
//     Get.put(CartControllerImp());
//     return GetBuilder<CartControllerImp>(
//         init: Get.put(CartControllerImp()),
//         builder: (controller) => Column(
//               children: [
//                 SizedBox(
//                     // height: Get.height * 0.22,
//                     child: InkWell(
//                   onTap: () {
//                     Get.toNamed(AppRoute.productDetails, arguments: {
//                       "id": int.parse(cartModel.itemsId!),
//                       "name":
//                           myServices.sharedPreferences.getString("lang") == "en"
//                               ? cartModel.itemsName
//                               : cartModel.itemsNameAr,
//                       "price": int.parse(cartModel.itemsPrice!),
//                       "image": cartModel.itemsImage,
//                       "desc":
//                           myServices.sharedPreferences.getString("lang") == "en"
//                               ? cartModel.itemsDesc
//                               : cartModel.itemsDescAr,
//                     });
//                   },
//                   child: Container(
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 5, vertical: 5),
//                       decoration: BoxDecoration(boxShadow: [
//                         BoxShadow(
//                             blurRadius: 30,
//                             color: AppColor.gray.withOpacity(0.2),
//                             spreadRadius: 0,
//                             offset: const Offset(10, 10))
//                       ]),
//                       child: Card(
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(vertical: 15),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Image.network(
//                                 "${AppLink.imageItems}/${cartModel.itemsImage}",
//                                 width: Get.width * 0.31,
//                                 height: Get.width * 0.25,
//                                 fit: BoxFit.contain,
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: Get.width * 0.05),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     myServices.sharedPreferences
//                                                 .getString("lang") ==
//                                             "en"
//                                         ? Text("${cartModel.itemsName}",
//                                             style:
//                                                 const TextStyle(fontSize: 14))
//                                         : Text("${cartModel.itemsNameAr}",
//                                             style:
//                                                 const TextStyle(fontSize: 14)),
//                                     Text(
//                                       "${cartModel.itemsPrice} EG",
//                                       style: const TextStyle(
//                                           fontSize: 16,
//                                           color: AppColor.primaryColor),
//                                     ),
//                                     const SizedBox(
//                                       height: 10,
//                                     ),
//                                     Row(
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               height: Get.width * 0.1,
//                                               width: Get.width * 0.1,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(25),
//                                                 color: AppColor.primaryColor,
//                                               ),
//                                               child: IconButton(
//                                                 onPressed: () {
//                                                   q = (int.parse(
//                                                           cartModel.quantity!) +
//                                                       1);
//
//                                                 },
//                                                 icon: const Icon(
//                                                   Icons.add,
//                                                   color: Colors.black,
//                                                 ),
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               width: 20,
//                                             ),
//                                             Text(
//                                               "${cartModel.quantity}",
//                                               style: const TextStyle(
//                                                   fontSize: 18,
//                                                   color: Colors.black),
//                                             ),
//                                             const SizedBox(
//                                               width: 20,
//                                             ),
//                                             Container(
//                                               height: Get.width * 0.1,
//                                               width: Get.width * 0.1,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(25),
//                                                 color: AppColor.primaryColor,
//                                               ),
//                                               child: IconButton(
//                                                 onPressed: () {
//                                                   if (int.parse(cartModel
//                                                           .quantity!) <=
//                                                       1) {
//                                                     Get.snackbar(
//                                                       "${controller.myServices.sharedPreferences.getString("username")}",
//                                                       "count".tr,
//                                                       icon: const Icon(
//                                                           Icons.access_alarm),
//                                                       barBlur: 2,
//                                                       margin: const EdgeInsets
//                                                               .symmetric(
//                                                           horizontal: 25),
//                                                       backgroundColor: AppColor
//                                                           .primaryColor
//                                                           .withOpacity(0.4),
//                                                       isDismissible: true,
//                                                       duration: const Duration(
//                                                           seconds: 3),
//                                                       borderRadius: 80,
//                                                       colorText: AppColor.black,
//                                                     );
//                                                   } else {
//                                                     q = (int.parse(cartModel
//                                                             .quantity!) -
//                                                         1);
//
//                                                   }
//                                                 },
//                                                 padding: EdgeInsets.only(
//                                                   bottom: Get.width * 0.1,
//                                                 ),
//                                                 icon: const Icon(
//                                                   Icons.minimize_outlined,
//                                                   color: Colors.black,
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         IconButton(
//                                           onPressed: () {
//
//                                           },
//                                           icon: const Icon(
//                                             Icons.delete_rounded,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )),
//                 ))
//               ],
//             ));
//   }
// }
