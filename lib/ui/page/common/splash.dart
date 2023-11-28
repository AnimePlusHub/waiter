import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waiter/ui/theme/theme.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({Key?key}):super(key:key);

  @override
  _SplashPageState createState()=>_SplashPageState();
}


class _SplashPageState extends State<SplashPage>{
  // @override
  // void initState(){
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     timer();
  //   });
  //   super.initState();
  // }
  Widget _body(){
    var height = 150.0;
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        height: height,
        width: height,
        alignment: Alignment.center,
        color: Color(0xff34343b),
        child: Container(
          padding: const EdgeInsets.all(50),
          decoration: const BoxDecoration(
            color: Color(0xff34343b),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const CircularProgressIndicator(
                strokeWidth: 2,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 300,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    // var state = Provider.of<AuthState>(context);
    return Scaffold(
      backgroundColor: PlanetMsgColor.white,
      body: _body()
    );
  }
}