import 'package:flutter/material.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('logo.png', width: 150, height: 150),
            const SizedBox(height: 32),
            const Text(
              "Recuperar contraseña",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            Form(
              key: _formKey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                  hintText: "correo electrónico",
                  label: Text("Correo electrónico"),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Escribe tu correo electrónico';
                  }

                  if (!value.contains('@')) {
                    return 'Correo electrónico inválido';
                  }

                  return null;
                },
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => _validateForm(),
              child: const Text("Enviar código"),
            ),
          ],
        ),
      ),
    ));
  }
  void _validateForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, '/code-validation');
    }
  }
}
