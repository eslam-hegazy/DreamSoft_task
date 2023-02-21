import 'package:flutter/services.dart';

class Constants {
  static void changeStatusBar(
      {required Color colorStatus,
      required SystemUiOverlayStyle systemUiOverlayStyle}) {
    return SystemChrome.setSystemUIOverlayStyle(
      systemUiOverlayStyle.copyWith(
        statusBarColor: colorStatus,
      ),
    );
  }

  static const profile =
      "https://img.freepik.com/free-photo/stylish-good-looking-ambitious-smiling-brunette-woman-with-curly-hairstyle-cross-hands-chest-confident-professional-pose-smiling-standing-casually-summer-outfit-talking-friend-white-wall_176420-36248.jpg?w=900&t=st=1676997855~exp=1676998455~hmac=b08fa1b9cc79aa3f7714e64dbe0f2f99fe118f9929f1db7241f5125891295645";
  static const text =
      "String literals (denoted by double or single quotes) and strings returned from String calls in a non-constructor context (that is, called without using the new keyword) are primitive strings. In contexts where a method is to be invoked on a primitive string or a property lookup occurs, JavaScript will automatically wrap the string primitive and call the method or perform the property lookup on the wrapper object instead.";
}
