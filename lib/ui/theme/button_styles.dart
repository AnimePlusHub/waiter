part of 'theme.dart';


class ButtonStyles{
  ButtonStyles._();
  static ButtonStyle get LoginButton{
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColor.primary),
      minimumSize: MaterialStateProperty.all(Size(200, 50)),
      textStyle: MaterialStateProperty.all(TextStyles.ButtonTextStyle)
    );
  }
  static ButtonStyle get RegistButton{
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColor.darkGrey),
      minimumSize: MaterialStateProperty.all(Size(200, 50)),
      textStyle: MaterialStateProperty.all(TextStyles.ButtonTextStyle)
    );
  }
}