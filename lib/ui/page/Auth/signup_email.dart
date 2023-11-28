import 'package:flutter/material.dart';
import 'package:waiter/ui/theme/theme.dart';

class SignupEmail extends StatefulWidget {
  final VoidCallback? loginCallback;
  const SignupEmail({Key? key, this.loginCallback}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignupState();
}

class _SignupState extends State<SignupEmail> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _nickNameController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
    _nickNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    _nickNameController.dispose();
    super.dispose();
  }
  Widget _registTitle(){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Text("开始注册，欢迎加入我们～",style: TextStyles.titleStyle,),
    );
  }
  Widget _submitButton(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 35),
      child: FilledButton(onPressed: ()=>{},child: Text("下一步"),style: ButtonStyles.LoginButton,),
    );
  }
  Widget _entryField(String hint, {required TextEditingController controller,bool isPassword = false,bool isEmail = false}){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5)
      ),
      child: TextField(
        controller: controller,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        style: const TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20)
        ),

      ),
    );
  }
  Widget _body(BuildContext context) {
    return Container(
      height: 700,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _registTitle(),
            _entryField('账户',controller: _nameController),
            _entryField('电子邮件',controller: _emailController,isEmail: true),
            _entryField('请输入密码',controller: _passwordController,isPassword: true),
            _entryField('请确认密码',controller: _confirmController),
            _submitButton(context)
          ],
        ),
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.only(top: 50),
    //   child: ConstrainedBox(constraints: BoxConstraints.expand(),child: Column(
    //     children: [
    //       Padding(
    //           padding: const EdgeInsets.only(top: 30),
    //           child: Text(
    //             "欢迎注册，快加入我们",
    //             style: TextStyles.RegistTextStyle,
    //             textAlign: TextAlign.center,
    //           )),
    //       Container(
    //         margin: const EdgeInsets.only(top: 30, left: 5),
    //         width: 400,
    //         height: 600,
    //         child: Form(
    //           child: Column(
    //             children: <Widget>[
    //               Padding(padding: const EdgeInsets.only(top: 20),child: TextFormField(
    //                 controller: _nameController,
    //                 cursorColor: AppColor.darkGrey,
    //                 decoration: InputDecoration(
    //                   fillColor: AppColor.rawGrew,
    //                   filled: true,
    //                   labelText: "账户",
    //                   labelStyle: TextStyles.subtitleStyle,
    //                   suffixIcon: IconButton(
    //                     icon: const Icon(
    //                       Icons.close_sharp,
    //                       color: AppColor.primary,
    //
    //                     ),
    //                     onPressed: (){
    //                       _nameController.clear();
    //                     },
    //                   ),
    //                   focusedBorder: const OutlineInputBorder(
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                   enabledBorder: const OutlineInputBorder(
    //                       borderRadius: BorderRadius.all(Radius.circular(3)),
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                 ),
    //               )),
    //               Padding(padding: const EdgeInsets.only(top: 20),child: TextFormField(
    //                 controller: _emailController,
    //                 cursorColor: AppColor.darkGrey,
    //                 decoration: InputDecoration(
    //                   fillColor: AppColor.rawGrew,
    //                   filled: true,
    //                   labelText: "电子邮件",
    //                   labelStyle: TextStyles.subtitleStyle,
    //                   suffixIcon: IconButton(
    //                     icon: const Icon(
    //                       Icons.close_sharp,
    //                       color: AppColor.primary,
    //
    //                     ),
    //                     onPressed: (){
    //                       _emailController.clear();
    //                     },
    //                   ),
    //                   focusedBorder: const OutlineInputBorder(
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                   enabledBorder: const OutlineInputBorder(
    //                       borderRadius: BorderRadius.all(Radius.circular(3)),
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                 ),
    //               )),
    //               Padding(padding: const EdgeInsets.only(top: 20),child: TextFormField(
    //                 controller: _passwordController,
    //                 cursorColor: AppColor.darkGrey,
    //                 decoration: InputDecoration(
    //                   fillColor: AppColor.rawGrew,
    //                   filled: true,
    //                   labelText: "密码",
    //                   labelStyle: TextStyles.subtitleStyle,
    //                   suffixIcon: IconButton(
    //                     icon: const Icon(
    //                       Icons.close_sharp,
    //                       color: AppColor.primary,
    //
    //                     ),
    //                     onPressed: (){
    //                       _passwordController.clear();
    //                     },
    //                   ),
    //                   focusedBorder: const OutlineInputBorder(
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                   enabledBorder: const OutlineInputBorder(
    //                       borderRadius: BorderRadius.all(Radius.circular(3)),
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                 ),
    //               )),
    //               Padding(padding: const EdgeInsets.only(top: 20),child: TextFormField(
    //                 controller: _confirmController,
    //                 cursorColor: AppColor.darkGrey,
    //                 decoration: InputDecoration(
    //                   fillColor: AppColor.rawGrew,
    //                   filled: true,
    //                   labelText: "确认密码",
    //                   labelStyle: TextStyles.subtitleStyle,
    //                   suffixIcon: IconButton(
    //                     icon: const Icon(
    //                       Icons.close_sharp,
    //                       color: AppColor.primary,
    //
    //                     ),
    //                     onPressed: (){
    //                       _confirmController.clear();
    //                     },
    //                   ),
    //                   focusedBorder: const OutlineInputBorder(
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                   enabledBorder: const OutlineInputBorder(
    //                       borderRadius: BorderRadius.all(Radius.circular(3)),
    //                       borderSide: BorderSide(color: AppColor.rawGrew)),
    //                 ),
    //               )),
    //               Padding(padding: const EdgeInsets.only(top: 20),child: FilledButton(onPressed: ()=>{},style: ButtonStyles.LoginButton,child:const Text("下一步")),),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }
}
