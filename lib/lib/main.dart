import 'package:flutter/material.dart';

// import 'package:flutter_application_1/pages/ConfirmPayment%20copy.dart';
// import 'package:flutter_application_1/pages/PaymentData.dart';
// import 'package:flutter_application_1/pages/PaymentMethod%20copy.dart';

// import 'package:flutter_application_1/pages/welcome.dart';
// import 'package:flutter_application_1/Aboutus.dart';
// import 'package:flutter_application_1/Finduremail.dart';
// import 'package:flutter_application_1/checkemail.dart';
// import 'package:flutter_application_1/creation.dart';

// import 'package:flutter_application_1/Profile.dart';
// import 'package:flutter_application_1/cart.dart';
// import 'package:flutter_application_1/favourites.dart';
// import 'package:flutter_application_1/blog.dart';
// import 'package:flutter_application_1/ItemDetails.dart';
// import 'package:flutter_application_1/contactUs.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/lib/MainApp.dart';
import 'package:flutter_application_1/lib/pages/Products.dart';
import 'package:flutter_application_1/lib/provider/google_signin.dart';


import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

import 'Home.dart';
import 'pages/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return CartItems();
        }),
        ChangeNotifierProvider(create: (context) {
          return GoogleSignInProvider();
        }),
      ],
      child: MaterialApp(
        title: "Furniture App",
        debugShowCheckedModeBanner: false,
        // initialRoute: "/ProfileInform",
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              ));
            } else if (snapshot.hasError) {
              return SnackBar(
                duration: const Duration(days: 1),
                content: const Text('Error.'),
                action: SnackBarAction(label: "close", onPressed: () {}),
                backgroundColor: Colors.red,
              );
            } else if (snapshot.hasData) {
              return Main();
            } else {
              return const Login();
            }
          },
        ),
        // routes: {
        //   // "/PaymentConfirmation": (context) => const PaymentConfirmation(),
        //   // "/PaymentMethod": (context) => const PaymentMethod(),
        //   // "/PaymentData": (context) => const PaymentData(),
        //   // "/": (context) => const Welcome(),
        //   // "/login": (context) => const Login(),
        //   "/signup": (context) => const Signup(),
        //   // "/welcome": (context) => const Welcome(),
        //   // "/Finduremail": (context) => const Finduremail(),
        //   // "/checkemail": (context) => const checkemail(),
        //   // "/creation": (context) => const Creation(),
        //   // "/Home": (context) => const Home(),
        //   // "/Profile": (context) => const AbadyApp(),
        //   // "/cart": (context) => const Cart(),
        //   // "/favourites": (context) => const Kanbti(),
        //   // "/blog": (context) => const Blog(),
        //   // "/contactUs": (context) => const contactUs(),
        //   // "/ItemDetails": (context) => const ItemDetails(),
        //   "/ProfileInform": (context) => ProfileInform(),
        // }
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
