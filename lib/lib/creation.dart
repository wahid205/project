import 'package:flutter/material.dart';

class Creation extends StatelessWidget {
  const Creation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              'assets/Background.jpg',
              color: Colors.white.withOpacity(0.7),
              colorBlendMode: BlendMode.modulate,
              fit: BoxFit.fitHeight,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'Create New Password',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'Your New Password Must Be Diffrent From The Previuos Password '),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'New Pssword',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.visibility,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Pssword',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.visibility,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Reset Password'),
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all<Size>(Size.infinite),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
