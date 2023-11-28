
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waiter/ui/theme/theme.dart';

class WelcomePage extends StatefulWidget{
  const WelcomePage({Key?key}) : super(key:key);

  @override
  _WelcomePageState createState()=>_WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage>{
  Widget _body(){
    return SafeArea(child: Container(
      color: AppColor.white,
      child: Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(top: 200),child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image(image: AssetImage("assets/images/welcome_logo.png"),width: 100),
            Text("PlanetMsg",style: TextStyles.WelcomeTextStyle)
          ],
        ),),
        Padding(padding: const EdgeInsets.only(top: 70),child:
        FilledButton(onPressed: ()=>{}, child: Text("登录"),style: ButtonStyles.LoginButton,),),
        Padding(padding: const EdgeInsets.only(top: 20),child:
        FilledButton(onPressed: ()=>{}, child: Text("注册"),style: ButtonStyles.RegistButton,),)

      ],
      )

  ));
}
@override
Widget build(BuildContext context){
    return Scaffold(
      body: _body(),
    );
}
}