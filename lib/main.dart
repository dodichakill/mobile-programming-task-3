import 'package:flutter/material.dart';

void main() {
  runApp(const DetailScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Login Screen',
                style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.blue[500],
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              height: 400,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Email', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Value",
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Password', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Value",
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text('Forgot Password?',
                      style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Register Screen',
                style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.blue[500],
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              height: 350,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Email', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Value",
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Password', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Value",
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Home Screen',
                  style: TextStyle(color: Colors.white)),
              centerTitle: true,
              backgroundColor: Colors.blue[500],
            ),
            body: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu),
                        Text('Title', style: TextStyle(fontSize: 25)),
                        Icon(Icons.account_circle_outlined)
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        "https://picsum.photos/id/${100 + i}/120/110"),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Title', style: TextStyle(fontSize: 20)),
                                  SizedBox(height: 5),
                                  Text(
                                      i == 0
                                          ? 'Updated Today'
                                          : i == 1
                                              ? "Updated yesterday"
                                              : 'Updated 2 days ago',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            )
                        ]),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        "https://picsum.photos/id/${200 + i}/120/110"),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Title', style: TextStyle(fontSize: 20)),
                                  SizedBox(height: 5),
                                  Text(
                                      i == 0
                                          ? 'Updated Today'
                                          : i == 1
                                              ? "Updated yesterday"
                                              : 'Updated 2 days ago',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            )
                        ]),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        "https://picsum.photos/id/${310 + i}/120/110"),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Title', style: TextStyle(fontSize: 20)),
                                  SizedBox(height: 5),
                                  Text(
                                      i == 0
                                          ? 'Updated Today'
                                          : i == 1
                                              ? "Updated yesterday"
                                              : 'Updated 2 days ago',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            )
                        ]),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        "https://picsum.photos/id/${400 + i}/120/110"),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Title', style: TextStyle(fontSize: 20)),
                                  SizedBox(height: 5),
                                  Text(
                                      i == 0
                                          ? 'Updated Today'
                                          : i == 1
                                              ? "Updated yesterday"
                                              : 'Updated 2 days ago',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            )
                        ])
                  ],
                ))));
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Detail View Screen',
                  style: TextStyle(color: Colors.white)),
              centerTitle: true,
              backgroundColor: Colors.blue[500],
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 20),
                      Text('Title', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                  SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://picsum.photos/id/1000/600/300",
                    ),
                  ),
                  SizedBox(height: 15),
                  Text('Title', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 5),
                  Text('Published Date', style: TextStyle(fontSize: 12)),
                  SizedBox(height: 10),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "),
                  SizedBox(height: 10),
                  Text(
                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Other Post', style: TextStyle(fontSize: 20)),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(3, (i) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://picsum.photos/id/${10 + i}/120/90",
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Title',
                                        style: TextStyle(fontSize: 20)),
                                    Text(
                                      'Description duis aute irure dolor in reprehenderit in voluptate velit.',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    SizedBox(height: 10),
                                    Text('Today • 23 min',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      );
                    }).toList(),
                  )
                ],
              ),
            )));
  }
}
