import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailsController  extends FullLifeCycleController with FullLifeCycleMixin {
  WebViewController? webViewController;
  RxBool isLoading = true.obs;
  RxString url="".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    var data=Get.arguments;
    if(data!=null){
      url.value=data[0];
    }
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }

}