import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/barcode_controller/barcode_controller.dart';

Widget barcodeScan(BuildContext context) {
  BarcodeController barcodeController = Get.find();
  return AiBarcodeScanner(
    allowDuplicates:
        false, // yinelenen ve ya tekrarlanan barkodların birden fazla okunmasına izin vermez. Her bir barkodun bir kez alınmasını sağlar.
    onScan: (String value) {
      barcodeController.getBarcode(value);
      debugPrint(value);
    },
    // onDetect: (BarcodeCapture barcodeCapture) {
    //   print('Taranan barkod: ${barcodeCapture.barcodes}');
    // },
  );
}
