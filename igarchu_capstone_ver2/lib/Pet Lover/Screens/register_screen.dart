import 'package:flutter/material.dart';
import 'package:igarchu_capstone_ver2/Pet%20Lover/Screens/login_screen.dart';
import 'package:igarchu_capstone_ver2/Pet%20Lover/Screens/organization_register_screen.dart';
import 'package:igarchu_capstone_ver2/constants.dart';

import '../Widgets/rounded_button.dart';
import '../Widgets/textfield_container.dart';
import '../Widgets/underpart.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String dropdownValue = "Individual";
  var dropdownItems = ["Individual", "Animal Shelter Organization",];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryLightColor,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: kbutton2,),
           onPressed: () { Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (_) => const LoginScreen()),
                                          ); },),
        ),
          body: SizedBox(
        // width: size.width,
        // height: size.height,
        child: SingleChildScrollView(
            child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              kPrimaryLightColor,
              kPrimaryLightColor,
            ], begin: Alignment.topLeft, end: Alignment.centerRight),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(236, 167, 102, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('REGISTER AS INDIVIDUAL USER',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                            // key: _formKey,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  TextFieldContainer(
                                  textfieldSize: size.width * 0.399,
                                  child: TextFormField(
                                    // controller: _nameController,
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter First Name.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: kbutton2,
                                      ),
                                      hintText: "First Name",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(width: size.width * 0.004),
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.399,
                                  child: TextFormField(
                                    // controller: _nameController,
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter Last Name.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: kbutton2,
                                      ),
                                      hintText: "Last Name",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                ],
                                ),
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    // controller: _mobileNumberController,
                                    validator: (val) => val!.isEmpty
                                        ? 'Enter Address'
                                        : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.pin_drop,
                                        color: kbutton2,
                                      ),
                                      hintText: "Address",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    // controller: _mobileNumberController,
                                    validator: (val) => val!.isEmpty
                                        ? 'Enter 11 digits number.'
                                        : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.contact_phone,
                                        color: kbutton2,
                                      ),
                                      hintText: "Mobile Number",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    // controller: _emailController,
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter an email.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.email,
                                        color: kbutton2,
                                      ),
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    // controller: _passwordController,
                                    // obscureText: isHidden,
                                    validator: (val) => val!.length < 6
                                        ? 'Enter a password atleast 6 character long.'
                                        : null,
                                    // onChanged: (val) {
                                    //   setState(() => password = val);
                                    // },
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: kbutton2,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      // suffix: InkWell(
                                      //   onTap: togglePasswordView,
                                      //   child: Icon(
                                      //     isHidden
                                      //         ? Icons.visibility
                                      //         : Icons.visibility_off,
                                      //   ),
                                      // ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                                RoundedButton(
                                  text: 'REGISTER',
                                  press: () {}
                                  // => register(authService),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                UnderPart(
                                    title: "REGISTER AS ANIMAL SHELTER ORGANIZATION?",
                                    navigatorText: "Register here",
                                    onTap: () {
                                      // widget.toggleView();
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const OrganizationScreen()),
                                      );
                                    }),
                                    const SizedBox(
                                  height: 30,
                                ),
                                UnderPart(
                                    title: "Already have an account?",
                                    navigatorText: "Login here",
                                    onTap: () {
                                      // widget.toggleView();
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const LoginScreen()),
                                      );
                                    }),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ))
                      ],
                    )),
              ),
            ],
          ),
        )),
      )),
    );
    
  }
}