import 'package:flutter/material.dart';
import 'package:widgte_template/yollet_template_base/yollet_template_page.dart';

class AppRoutes {
  static const RouteToHOME = "/home";

  static Map<String, WidgetBuilder> getRoutes() {
    Map<String, WidgetBuilder> base = {
      AppRoutes.RouteToHOME: (BuildContext context) => YolletTemplatePage(),
    };

    return base;
  }
}
