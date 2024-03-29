import 'package:flutter/material.dart';

class AuthFormWidget extends StatefulWidget {
  const AuthFormWidget({super.key});

  @override
  State<AuthFormWidget> createState() => _AuthFormWidgetState();
}

class _AuthFormWidgetState extends State<AuthFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 62),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            padding: const EdgeInsets.only(
              top: 4,
              left: 16,
              right: 16,
              bottom: 4,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                )
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                hintText: 'E-mail',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            margin: const EdgeInsets.only(top: 32),
            padding: const EdgeInsets.only(
              top: 4,
              left: 16,
              right: 16,
              bottom: 4,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                )
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                hintText: 'Senha',
              ),
            ),
          ),
          // const Align(
          //   alignment: Alignment.centerRight,
          //   child: Padding(
          //     padding: EdgeInsets.only(top: 16, right: 32),
          //     child: Text(
          //       'Forgot Password ?',
          //       style: TextStyle(color: Colors.grey),
          //     ),
          //   ),
          // ),
          const Spacer(),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF3127F3),
                  Color(0xFF5E51D0),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Center(
              child: Text(
                'Login'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Não tem uma conta?',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Criar conta',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
