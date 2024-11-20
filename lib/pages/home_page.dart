

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'add_product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Footware Admin'),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index){
          return ListTile(
            title: Text('Title'),
            subtitle: Text('price : 100'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: (){
                print('delect');
              },),
          );
          }
      ),
    floatingActionButton: FloatingActionButton(
          onPressed: () {
            //print('add new data');
            Get.to(AddProductPage());
          },
          child: Icon(Icons.add),
        ),
    );
  }
}




// //import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:footware_admin/controller/home_controller.dart';
// // import 'package:footware_admin/pages/add_product_page.dart';
// import 'package:get/get.dart';
// import 'package:get/route_manager.dart';
//
// import '../controller/home_controller.dart';
// import 'add_product_page.dart';
//
// // import '../controller/home_controller.dart';
//
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeController>(builder: (ctrl) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Footware Admin'),),
//         body: ListView.builder(
//             itemCount: ctrl.products.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(ctrl.products[index].name ?? ''),
//                 subtitle: Text((ctrl.products[index].price ?? 0).toString()),
//                 trailing: IconButton(icon: Icon(Icons.delete),
//                   onPressed: () {
//                   ctrl.deleteProduct(ctrl.products[index].id ?? ' ');
//
//                   },)
//                 ,);
//             }),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Get.to(AddProductPage());
//           },
//           child: Icon(Icons.add),
//         ),
//       );
//     });
//   }
// }