import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_colors.dart';
import 'package:frontend_system/futures/auth/widgets/auth_button.dart';
import 'package:frontend_system/futures/auth/widgets/auth_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    final window_width = MediaQuery.of(context).size.width < 900
        ? MediaQuery.of(context).size.width * .2
        : MediaQuery.of(context).size.width * .3;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: window_width, right: window_width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "客户关系管理系统",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "提供专业的客户管理系统,助力提高客户成交率",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              AuthField(
                hintText: "账户",
                prefixIcon: Icons.people_alt_outlined,
                controller: nameController,
              ),
              SizedBox(
                height: 15,
              ),
              AuthField(
                hintText: "密码",
                prefixIcon: Icons.lock_clock_outlined,
                controller: passwordController,
                isObscureText: true,
              ),
              SizedBox(
                height: 15,
              ),
              AuthButton(buttonText: "登录", onPressed: () {}),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: checked,
                          onChanged: (value) {
                            setState(() {
                              checked = !checked;
                            });
                          }),
                      Text("自动登录")
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("忘记密码?"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
