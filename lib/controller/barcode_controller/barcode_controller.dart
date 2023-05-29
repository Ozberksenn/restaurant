import 'package:get/get.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeController extends GetxController {
  var barcodeValue = 'Barcode Value'.obs;
  void getBarcode(value) {
    barcodeValue.value = value;
  }
}
