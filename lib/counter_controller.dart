import 'package:get/get.dart';

class CounterController extends GetxController {
//getx has its own datatype Rx i.e RxInt , RxBool

  RxInt counter = 1.obs; //obs observables, reactive notices changes

  incrementCounter() {
    counter.value++; // not counter ++ but value++ in getx
    print(counter.value);
  }
}
