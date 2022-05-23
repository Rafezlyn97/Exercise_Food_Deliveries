import 'package:get/get.dart';

class Dimension {
  static double screenheight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //dynamic height container
  static double pageView = screenheight / 2.44; //781.1/320=2.44
  static double pageViewContainer = screenheight / 3.55; // 781.1/220=3.55
  static double pageViewTextContainer = screenheight / 6.79; // 781.1/115=6.79
  static double pageView120 = screenheight / 6.51;
  static double pageView100 = screenheight / 7.81;
  static double pageView150 = screenheight / 5.21;
  static double pageView200 = screenheight / 3.91;
  static double pageView350 = screenheight / 2.23;

  //dynamic height
  static double height10 = screenheight / 78.11;
  static double height15 = screenheight / 52.07;
  static double height20 = screenheight / 39.06;
  static double height30 = screenheight / 26.04;
  static double height45 = screenheight / 17.36;
  static double height50 = screenheight / 15.62;

  //dynamic width
  static double width5 = screenheight / 156.22;
  static double width10 = screenheight / 78.11;
  static double width15 = screenheight / 52.07;
  static double width20 = screenheight / 39.06;
  static double width30 = screenheight / 26.04;
  static double width45 = screenheight / 17.36;
  static double width50 = screenheight / 15.62;
  static double width230 = screenheight / 3.40;
  static double width120 = screenheight / 6.51;

  //dynamic font size
  static double font12 = screenheight / 65.09;
  static double font15 = screenheight / 52.07;
  static double font16 = screenheight / 48.82;
  static double font18 = screenheight / 43.40;
  static double font20 = screenheight / 39.06;
  static double font26 = screenheight / 30.04;

  //dynamic radius size
  static double radius5 = screenheight / 156.22;
  static double radius15 = screenheight / 52.07;
  static double radius30 = screenheight / 26.04;

  //dynamic icon size
  static double icon20 = screenheight / 39.06;
  static double icon16 = screenheight / 48.82;
}
