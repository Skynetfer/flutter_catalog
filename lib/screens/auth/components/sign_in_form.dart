import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../contants.dart';

class SignInForm extends StatelessWidget {
  final GlobalKey formKey;
  late String _email, _password;
  SignInForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(text: "Email"),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter your email",
            ),
            validator: EmailValidator(
              errorText: "Use a valid email",
            ),
            onSaved: (email) => _email = email!,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextField(text: "Password"),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter you password",
            ),
            validator: passwordValidator,
            onSaved: (password) => _password = password!,
            onChanged: (pass) => _password = pass,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

class TextField extends StatelessWidget {
  final String text;
  const TextField({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 3),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
