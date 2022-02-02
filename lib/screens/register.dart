// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/components/alert.dart';
import 'package:incentive_app/constants.dart' as cons;
import 'package:validators/validators.dart' show isEmail;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static String id = 'register';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Alert alert = Alert();
  late String email;
  late String passwd;
  late String passwdConfirm;
  late String errorMessage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: cons.register,
        home: Scaffold(
            body: Builder(
                builder: (context) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            validator: (val) =>
                                !isEmail(val!) ? 'Invalid Email' : null,
                            decoration: InputDecoration(
                                labelText: cons.email,
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              email = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: cons.passwd,
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              passwd = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: cons.passwdConfirm,
                                border: OutlineInputBorder()),
                            onChanged: (value) {
                              passwdConfirm = value;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                bool resultRegister = false;
                                createRegister().then((value) {
                                  resultRegister = value;
                                });
                                if (resultRegister) {
                                  showDialog<void>(
                                      context: context,
                                      builder: (context) => alert.errorDialog(
                                          context,
                                          cons.register,
                                          errorMessage));
                                }
                              },
                              child: Text(cons.register))
                        ],
                      )),
                    ))));
  }

  bool validateRegister() {
    if (!isEmail(email)) {
      errorMessage = cons.emailError;
      return false;
    }

    if (passwd != passwdConfirm) {
      errorMessage = cons.passwdError;
      return false;
    }

    return true;
  }

  Future<bool> createRegister() async {
    if (!validateRegister()) {
      return false;
    }
    UserCredential user = await _auth.createUserWithEmailAndPassword(
        email: email, password: passwd);

    CollectionReference userPerfil = _firestore.collection('user_perfil');

    userPerfil.add({'perfil': null, 'user': user.user?.uid});

    return true;
  }
}
