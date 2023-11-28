import 'package:flutter/material.dart';
import 'package:waiter/ui/theme/theme.dart';
import 'package:waiter/widgets/emptyList.dart';

class SignIn extends StatefulWidget{
  final VoidCallback? loginCallback;
  const SignIn({Key? key,this.loginCallback}):super(key: key);
  @override
  State<StatefulWidget> createState() => _SignInstate();
}

class _SignInstate extends State<SignIn>{
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  Widget _entryField(String hint,{required TextEditingController controller,bool isPassword = false}){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20)
        ),
      ),
    );
  }
  Widget _body(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 150,
            ),
            NotifyText(title: "欢迎登录",subTitle: "你的朋友都很想你～",),
            _entryField("账户名or邮箱", controller: _usernameController),
            _entryField("密码", controller: _passwordController),
            _loginButton()
          ],
        ),
      ),
    );
  }
  Widget _loginButton(){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 35),
      child: FilledButton(
        onPressed: ()=>{}, child: Text("登录"),style: ButtonStyles.LoginButton
      ),
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