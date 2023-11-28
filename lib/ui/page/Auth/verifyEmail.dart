
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waiter/widgets/digitField.dart';
import 'package:waiter/widgets/emptyList.dart';
import 'package:waiter/widgets/titleText.dart';

class VerifyEmailPage extends StatefulWidget{
  final VoidCallback? loginCallback;

  const VerifyEmailPage({Key? key,this.loginCallback}):super(key: key);

  @override
  State<StatefulWidget> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage>{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  Widget _body(BuildContext context){
    final size = MediaQuery.of(context).size;
    print(size);

    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NotifyText(title: "请输入你的邮箱验证码",subTitle: "已发送到ddddd@qq.com",),
          SizedBox(
            height: 30,
          ),
          DigitField(
            onCodeChanged: (code){
              print("code $code");
            },
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _body(context),
    );
  }

}