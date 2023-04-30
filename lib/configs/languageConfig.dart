
import 'package:get/get.dart';

class LanguageConfig extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Welcome!': 'Welcome!', //? Key: Value
          'Full Name': 'Full Name',
          'Title': 'Test Title',
          'Descrip': 'Hi All',
        },
        'si_LK': {
          'Welcome!': "සාදරයෙන් පිළිගනිමු!",
          'Full Name': 'සම්පූර්ණ නම',
          'Title': 'මාතෘකාව',
          'Descrip': 'ආයුබෝවන් සියල්ලටම',
        }
      };
}

