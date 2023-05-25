import 'package:derbyjo/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Function toggleview;
  const Login(
      {super.key,
      required void Function() this.toggleview,
      });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String error = '';

  bool _isObsecure = true;
  bool _valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset('images/Rectangle 1.png'),
              const Text('Sign in'),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'with',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Enter Email',
                        isDense: true,
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'Enter your email'),
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autocorrect: false,
                    textCapitalization: TextCapitalization.none,
                    onChanged: (val) {
                      setState(() {
                        _email = val;
                      });
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                    validator: (value) {
                      if (value == null ||
                          value.trim().isEmpty ||
                          !value.contains('@')) {
                        return "Please Enter a valid Email address";
                      }
                      return null;
                    } //(value) =>
                    //value!.isEmpty ? "Enter an Email! " : null,

                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                      obscureText: _isObsecure,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          labelText: 'Enter Password ',
                          isDense: true,
                          prefixIcon: const Icon(Icons.key_rounded),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObsecure = !_isObsecure;
                                });
                              },
                              icon: Icon(_isObsecure
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          hintText: 'Enter your password'),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (val) {
                        setState(() {
                          _password = val;
                        });
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                      validator: (value) {
                        if (value == null || value.trim().length < 8) {
                          return "Password must be 8 char long";
                        }
                        return null;
                      } //(value) =>
                      //value!.length < 8 ? "Must be 8 length " : null,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: const Color.fromARGB(255, 7, 136, 150),
                      activeColor: Colors.cyan,
                      value: _valuefirst,
                      onChanged: (value) {
                        setState(() {
                          _valuefirst = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(fontSize: 14),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 98, bottom: 8),
                      child: Text(
                        'Forget your password?',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 29.0),
                child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          dynamic result = await _auth.login(_email, _password);
                          if (result == null) {
                            setState(() {
                              error = 'Please supply a valid email';
                            });
                          }
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 330),
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 14),
                      ),
                      onPressed: () {
                        widget.toggleview();
                      },
                      child: const Text(
                        'Sign up? ',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7, bottom: 7),
                child: Text(
                  'or',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 95, right: 8),
                    child: GestureDetector(
                      child: Column(
                        children: [
                          Image.asset('images/Facebook.png')
                        ],
                      ),
                      onTap: ()async{

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()async {
                        await _auth.signInWithGoogle();
                      },
                      child: Column(
                        children: [
                          Image.asset('images/Google.png'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: Column(
                        children: [
                          Image.asset('images/Apple Logo.png'),
                        ],
                      ),
                    ),
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
