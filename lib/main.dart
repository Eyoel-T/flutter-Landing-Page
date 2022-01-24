import "package:flutter/material.dart";

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: ListView(
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Get's Started",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            color: Colors.grey[600]),
                      ),
                      Text(
                        " Sign in",
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Poppins',
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Full name",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Jane Doe",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      contentPadding: EdgeInsets.all(17),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.blue)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "you@example.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      prefixIcon: Icon(Icons.email),
                      contentPadding: EdgeInsets.all(17),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "123456",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      contentPadding: EdgeInsets.all(17),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    title: RichText(
                      text: TextSpan(
                        text: "I agree to the",
                        style: TextStyle(
                            color: Colors.grey, fontFamily: "Poppins"),
                        children: [
                          TextSpan(
                            text: " Terms of Service",
                            style: TextStyle(
                                color: Colors.blue, fontFamily: "Poppins"),
                          ),
                          TextSpan(
                            text: " and",
                            style: TextStyle(
                                color: Colors.grey, fontFamily: "Poppins"),
                          ),
                          TextSpan(
                            text: " Privacy Policy",
                            style: TextStyle(
                                color: Colors.blue, fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ),
                    value: isChecked,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: isChecked ? () {} : null,
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 40)),
                        child: Text(
                          "Register",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
