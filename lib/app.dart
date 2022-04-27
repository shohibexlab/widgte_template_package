import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:widgte_template/yollet_template_base/yollet_template_page.dart';
import 'package:yollet_system/yollet_utilities.dart';

class TemplateApp extends StatelessWidget {
  const TemplateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleReduxProviderWrapper(
      child: ScreenUtilInit(
        designSize: Size(1440, 1000),
        builder: () => GetMaterialApp(
          home: YolletTemplatePage(),
        ),
      ),
    );
  }
}
