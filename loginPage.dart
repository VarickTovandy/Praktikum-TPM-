import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Login Screen')
      ),
      body: ListView(
        children:<Widget>[
          Center(
            child: Column(
              children:<Widget>[
                logoFlutter(),
                kolomForm(),
                tombolLogin(),
                //forgotPass()
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget logoFlutter(){
  return Column(
    children: [
      Padding(padding: EdgeInsets.only(top: 250)),
      Image.asset('images/logo_flutter.png', width: 50, height: 50,)
    ],
  );
}

Widget kolomForm(){
  return Column(
    children:<Widget>[
      Padding(padding: EdgeInsets.only(top: 50, bottom: 10, left: 50, right: 50),
        child: TextFormField(
          style: TextStyle(fontSize: 18),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            hintText: 'Email',
          ),
        ),
      ),
      Padding(padding: EdgeInsets.symmetric(horizontal: 50),
        child: TextFormField(
          style: TextStyle(fontSize: 18),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            hintText: 'Password',
          ),
        ),
      ),
    ],
  );
}

Widget tombolLogin(){
  return Column(
    children:<Widget>[
      Container(
        padding: EdgeInsets.only(top: 30, left: 50, right: 50),
        width: double.infinity,
        height: 65,
        child: ElevatedButton(onPressed: (){},
            child: Text('Log In')
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 10),
        child: TextButton(onPressed: (){},
            child: Text('Forgot Password?', style: TextStyle(color: Colors.black45))
        ),
      ),
    ],
  );
}
