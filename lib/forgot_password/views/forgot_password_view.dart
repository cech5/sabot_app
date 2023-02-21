import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 198, 31, 1),
        //leading: Icon(Icons.arrow_back_rounded),
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_rounded),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Atrás'),
              ],
            ),
            const Text(
              'Recuperar contraseña',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              //color: Colors.amber,
              //height: 200,
              child: const Text(
                'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña, ingrese el correo electrónico asociado con su cuenta a continuación.',
                style: TextStyle(
                  color: Color.fromRGBO(87, 99, 108, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    key: const Key('forget_email_input'),
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(247, 198, 31, 1),
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(side: BorderSide()),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text(
                  'Enviar Link',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
