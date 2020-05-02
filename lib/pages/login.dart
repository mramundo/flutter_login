import 'package:flutter/material.dart';
import 'package:flutter_login/components/login_form.dart';

class LoginPage extends StatelessWidget {
  static GlobalKey<LoginFormState> _formKey = GlobalKey<LoginFormState>();
  final _form = LoginForm(key: _formKey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () async {
          _formKey.currentState.validate();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: _form,
      ),
    );
  }
}
