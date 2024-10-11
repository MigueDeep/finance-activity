import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isObscure = true;

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
              "Iniciar sesión",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                isDense: true,
                hintText: "correo electrónico",
                label: Text("Correo electrónico"),
                prefixIcon: Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _email,
            ),
            const SizedBox(height: 32),
            TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                isDense: true,
                hintText: "Contraseña",
                label: const Text("Contraseña"),
                prefixIcon: IconButton(
                  onPressed: () => setState(() => _isObscure = !_isObscure),
                  icon: Icon(
                    _isObscure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
              ),
              obscureText: _isObscure,
              controller: _password,
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white),
                child: const Text("Iniciar sesión"),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/recover-password'),
              child: const Text("Recuperar contraseña"),
            )
          ],
        ),
      )),
    );
  }
}
