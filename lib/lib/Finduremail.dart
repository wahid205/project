import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'checkemail.dart';
import 'pages/login.dart';

class Finduremail extends StatefulWidget {
  const Finduremail({super.key});

  @override
  State<Finduremail> createState() => _FinduremailState();
}

class _FinduremailState extends State<Finduremail> {
  final emailController = TextEditingController();
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();

  resetPassword() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        });

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: Duration(days: 1),
        content: Text('Done... PLease Check your email.'),
        action: SnackBarAction(label: "close", onPressed: () {}),
      ));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: Duration(days: 1),
        content: Text('Error.'),
        action: SnackBarAction(label: "close", onPressed: () {}),
      ));
    }

// Stop indicator
    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const checkemail()),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/Background.jpg',
              fit: BoxFit.fitHeight,
              width: double.infinity,
              height: double.infinity,
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(107, 107, 107, 0.569),
            ),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forget your password',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Please enter your  email address or mobile number to search  for  your account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          const BoxShadow(
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.blue[800],
                            ),
                            hintText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          resetPassword();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            duration: Duration(days: 1),
                            content: Text('Error.'),
                            backgroundColor: Colors.red,
                            action: SnackBarAction(
                                label: "close", onPressed: () {}),
                          ));
                        }
                      },
                      child: Text('Reset Password'),
                      style: ButtonStyle(
                          maximumSize:
                              MaterialStateProperty.all<Size>(Size.infinite),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
