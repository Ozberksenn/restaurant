import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/barcode_controller/barcode_controller.dart';
import 'package:work/utils/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    BarcodeController barcodeController = Get.put(BarcodeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 204, 169, 169),
        elevation: 0,
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.qr_code_2_sharp),
            title: Obx(() => Text(barcodeController.barcodeValue.value)),
          ),
          ListTile(
            onTap: () => Get.toNamed(AppRoutes.reservation),
            leading: const Icon(Icons.hotel_class_rounded),
            title: const Text('Reservation'),
            trailing: const Icon(Icons.arrow_right),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.mobileScanner);
        },
        child: const Icon(Icons.qr_code_2_sharp),
      ),
    );
  }
}
