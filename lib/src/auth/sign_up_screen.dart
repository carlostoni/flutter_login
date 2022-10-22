import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ui_example/src/auth/components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final snFormatter = MaskTextInputFormatter(
    mask: '###-##-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '## # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.teal,
            Colors.lightGreen,
            Colors.greenAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Column(
                  children: [
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 70,
                          ),
                        ),
                      ),
                    ),
                    // Formulario // Registration form
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 30,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const CustomTextField(
                            icon: Icons.email,
                            label: 'E-mail',
                          ),
                          const CustomTextField(
                            icon: Icons.lock,
                            label: 'Password',
                            isSecret: true,
                          ),
                          const CustomTextField(
                            icon: Icons.person,
                            label: 'Name',
                          ),
                          CustomTextField(
                            icon: Icons.phone,
                            label: 'Telephone',
                            inputFormatters: [phoneFormatter],
                          ),
                          CustomTextField(
                            icon: Icons.content_copy,
                            label: 'Social Number',
                            inputFormatters: [snFormatter],
                          ),
                          Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 0.5, 1.0],
                              colors: [
                                Color.fromARGB(255, 157, 219, 115),
                                Color.fromARGB(255, 134, 190, 136),
                                Color.fromARGB(255, 109, 248, 197),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              minimumSize:
                                  MaterialStateProperty.all(Size(40, 40)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                              onPressed: () {},
                              child: const Text(
                                'Register User',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  child: SafeArea(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
