import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: const [
          _ContainerUp(),
          _ImageHeader(),
          CardContainer(),
        ],
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 220,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: double.infinity,
              //height: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: Column(
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _LoginForm(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('OR'),
          const Divider(
            endIndent: 30,
            indent: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Crear cuenta'),
          ),
        ],
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          _EmailInput(),
          SizedBox(
            height: 20,
          ),
          _PasswordInput(),
          SizedBox(
            height: 20,
          ),
          _LoginButton(),
          _ForgotPasswordButton(),
        ],
      ),
    );
  }
}

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'FORGOT PASSWORD',
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.black,
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      key: const Key('email_input_field'),
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        prefixIcon: const Icon(Icons.alternate_email_rounded),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      keyboardType: TextInputType.text,
      key: const Key('password_input_field'),
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: 'Contraseña',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        prefixIcon: const Icon(Icons.lock_outline_rounded),
      ),
      obscureText: true,
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(247, 198, 31, 1),
          foregroundColor: Colors.white,
          shape: const StadiumBorder(side: BorderSide()),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: const Text(
          'Ingresar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class _ImageHeader extends StatelessWidget {
  const _ImageHeader();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: const Image(
          image: AssetImage('assets/images/logo-4.png'),
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

class _ContainerUp extends StatelessWidget {
  const _ContainerUp();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: const Color.fromRGBO(247, 198, 31, 1),
      child: Stack(
        children: const [
          Positioned(
            top: 90,
            left: 30,
            child: _Bubble(),
          ),
          Positioned(
            top: -40,
            left: -30,
            child: _Bubble(),
          ),
          Positioned(
            top: -50,
            right: -20,
            child: _Bubble(),
          ),
          Positioned(
            bottom: -50,
            left: 10,
            child: _Bubble(),
          ),
          Positioned(
            bottom: 120,
            right: 20,
            child: _Bubble(),
          ),
        ],
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  const _Bubble();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.1),
      ),
    );
  }
}
