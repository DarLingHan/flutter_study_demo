import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        // child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFieldDemo(),
              RegisterForm(),
            ],
          ),
        ),
      ),
      // body: Theme(
      //   data: ThemeData(primaryColor: Colors.black),
      //   child: ThemeDemo(),
      // ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  late String username, password;
  void submitForm() {
    if (registerFormKey.currentState!.validate()) {
      registerFormKey.currentState!.save();
      print('use $username');
      print('pwd $password');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registering...')),
      );
    }
  }

  String? validateUsername(value) {
    if (value == null || value.isEmpty) {
      return 'Username is required.';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == '') {
      return 'Password is required.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        // autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'Username', helperText: ''),
              onSaved: (value) {
                username = value!;
              },
              validator: validateUsername,
            ),
            TextFormField(
              obscureText: true,
              decoration:
                  InputDecoration(labelText: 'Password', helperText: ''),
              onSaved: (value) {
                password = value!;
              },
              validator: validatePassword,
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: submitForm,
              ),
            )
          ],
        ));
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    textEditingController.addListener(() {
      debugPrint('1');
    });
    textEditingController.text = 'hello';
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value) {
      //   debugPrint('input: $value');
      // },
      onSubmitted: (value) {
        debugPrint('submit: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title',
        // border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}
