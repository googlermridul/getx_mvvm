import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': "what is your name",
          'internet_exception': 'Unable to show results! \n Please check your internet connection.'
        },
        'ur_PK': {
          'message': "آپ کا نام کیا ہے",
          'internet_exception': 'نتائج دکھانے سے قاصر! \n براہ کرم اپنا انٹرنیٹ کنکشن چیک کریں'
        }
      };
}
