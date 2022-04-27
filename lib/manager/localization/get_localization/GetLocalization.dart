import 'dart:ui';
import 'package:get/get.dart';
import 'package:widgte_template/manager/localization/languages/languages.dart';

class GetLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_EN': EnglishLocale.EN,
        'ko_KO': KoreanLocale.KO,
        'kk_KZ': KazakhLocale.KZ,
        'ru_RU': RussianLocale.RU,
      };
}

class Locales {
  Locale get RuLocale => const Locale('ru');
  Locale get KzLocale => const Locale('kk');
  Locale get EnLocale => const Locale('en');
  Locale get KrLocale => const Locale('ko');
}
