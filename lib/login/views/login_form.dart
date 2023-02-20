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
        children: [
          const _ContainerUp(),
          const _ImageHeader(),
          const CardContainer(),
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
                borderRadius: BorderRadius.circular(25),
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
                  Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
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

class _ImageHeader extends StatelessWidget {
  const _ImageHeader({
    super.key,
  });

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
