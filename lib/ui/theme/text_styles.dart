part of 'theme.dart';



class TextStyles{
  TextStyles._();
  //设置主要标题文字样式
  static TextStyle get onPrimaryTitleText{
      return const TextStyle(color: Colors.white,fontWeight: FontWeight.w600);
  }
  //设置二级标题文字样式
  static TextStyle get onPrimarySubTitleText{
    return const TextStyle(
      color: Colors.white
    );
  }
  static TextStyle get titleStyle{
    return const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get subtitleStyle{
    return const TextStyle(
      color: AppColor.darkGrey,fontSize: 14,fontWeight: FontWeight.bold
    );
  }

  static TextStyle get userNameStyle{
    return const TextStyle(
      color: AppColor.darkGrey,fontSize: 14,fontWeight: FontWeight.bold
    );
  }


  static TextStyle get textStyle14{
    return const TextStyle(
      color: AppColor.darkGrey,fontSize: 14,fontWeight: FontWeight.bold
    );
  }
  static TextStyle get WelcomeTextStyle{
    return const TextStyle(
      color: Color(0xFFDF6E57),
      fontSize: 30,
      fontWeight: FontWeight.bold
    );
  }
  static TextStyle get ButtonTextStyle{
    return const TextStyle(
      color: AppColor.white,
      fontSize: 16,
      fontWeight: FontWeight.bold
    );
  }
  static TextStyle get RegistTextStyle{
    return const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20
    );
  }
}