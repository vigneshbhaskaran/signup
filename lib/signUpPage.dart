import 'package:flutter/material.dart';
import 'package:signup/loginPage.dart';

class Menu extends StatefulWidget {
  Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namecontoller = TextEditingController();

  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();

  String _namevalue = '';

  String _emailvalue = '';

  String _passwordvalue = '';

  void _allsubmit() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _namevalue = _namecontoller.text;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('This is a custom duration SnackBar'),
            duration: Duration(seconds: 2), // Customize duration here
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewScreen(
                    myname: _namevalue,
                  )),
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('pls enter all required fields'),
          duration: Duration(seconds: 2), // Customize duration here
        ),
      );
    }
  }

  @override
  void dispose() {
    //***this will clean up or dispose the values
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _namecontoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 200, 10, 0),
                child: TextFormField(
                    controller: _namecontoller,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 192, 47, 47),
                    ),
                    decoration: InputDecoration(
                      labelText: '  NAME',
                      hintText: '  VIGNESH',
                      labelStyle: TextStyle(
                        fontSize: 30,
                      ),
                      floatingLabelStyle: TextStyle(
                        fontSize: 40,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.pink,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      //validates the value inside the textformfield , wghether it satisfies the conditions  ,   we can write the conditions/validations below as you can see
                      if (value == null || value.isEmpty) {
                        return 'Please enter an name';
                      }
                      if (value.length < 5) {
                        return 'please eneter name of min character lenth5';
                      }
                      final namereg = RegExp(r'^[a-zA-Z]+$');
                      if (!namereg.hasMatch(value)) {
                        return 'NAME CANNOT BE SPECIAL CHARACTERSS';
                      }
                      return null;
                    }),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                child: TextFormField(
                  controller: _emailcontroller,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 192, 47, 47),
                  ),
                  decoration: InputDecoration(
                    hintText: '  vig@gmail.com',
                    labelText: '  EMAIL ID',
                    labelStyle: TextStyle(
                      fontSize: 30,
                    ),
                    floatingLabelStyle: TextStyle(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 40,
                      color: Colors.pink,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    //validates the value inside the textformfield , wghether it satisfies the conditions  ,   we can write the conditions/validations below as you can see
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }

                    // Simple Email validation  validation: check for @ symbol and at least one dot after it **just like an email format
                    //as we have learnt in string :

                    final emailReg = RegExp(r'^[\w-\.]+@[\w-]+\.[\w-]{2,5}$');
                    {
                      if (!emailReg.hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                child: TextFormField(
                  controller: _passwordcontroller,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 192, 47, 47),
                  ),
                  decoration: InputDecoration(
                    hintText: '  123Xxy@ty',
                    labelText: '  PASSWORD',
                    labelStyle: TextStyle(
                      fontSize: 30,
                    ),
                    floatingLabelStyle: TextStyle(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.password_rounded,
                      size: 40,
                      color: Colors.pink,
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    final passReg = RegExp(r'\d');
                    {
                      if (!passReg.hasMatch(value)) {
                        return 'Please enter atleast 1 digit';
                      }
                    }

                    final passRegUp = RegExp(r'[A-Z]');
                    {
                      if (!passRegUp.hasMatch(value)) {
                        return 'Please enter atleast 1 UPPERCASE';
                      }
                    }
                    final passRegLow = RegExp(r'[a-z]');
                    {
                      if (!passRegLow.hasMatch(value)) {
                        return 'Please enter atleast 1 lowecase';
                      }
                    }

                    final passRegSpl = RegExp(r'[\.\?\^\*\&]');
                    {
                      if (!passRegSpl.hasMatch(value)) {
                        return 'Please enter atleast 1 specialcase';
                      }
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 350,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    _allsubmit();
                  },
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
