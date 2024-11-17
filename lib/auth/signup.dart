
import 'package:flutter/material.dart';
import 'package:the_project/components/textForm.dart';
import 'package:the_project/components/valid.dart';

import '../components/styleText.dart';
import 'crud.dart';
import 'link.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();

  crud _crud = crud();

  signup()async{
    if(formkey.currentState!.validate()){
      var response = _crud.postRequest(linkSignup, {
        "username" : username.text,
        "email" : email.text,
        "password" : password.text,
      }
      );
        Navigator.of(context).pushNamedAndRemoveUntil("login",(route) => false,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/man-1868632_1280.jpg'),
                fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Opacity(
                    opacity: 0.8,
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      height: 250,
                      width: 250,
                      child: const CircleAvatar(backgroundImage: AssetImage('image/WhatsApp Image 2024-09-12 at 10.53.59_8b858bb5.jpg'), backgroundColor: Colors.yellowAccent,),
                    )
                ),
            ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  height: 400, width: 350,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                  ),
                  child: Form(
                    key: formkey,
                    child: ListView(
                      children: [
                        textForm(
                            hin: "Username",
                            suffix: const Icon(Icons.person),
                            textType: TextInputType.name,
                            myController: username,
                            obscure: false,
                            valid: (val){
                              return valid(username.text, 2, 15);
                            }
                        ),
                        textForm(
                          hin: "Email",
                          suffix: const Icon(Icons.mail_outlined),
                          textType: TextInputType.emailAddress,
                          myController: email,
                          obscure: false,
                          valid: (val){
                            return valid(email.text, 12, 20);
                          },
                        ),
                        textForm(
                          hin: "Password",
                          suffix: const Icon(Icons.lock),
                          textType: TextInputType.none,
                          myController: password,
                          obscure: true,
                          valid: (val){
                            return valid(password.text, 8, 15);
                          },
                        ),
                            Container(
                              margin: const EdgeInsets.all(15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
                              ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(15),
                                    backgroundColor: Colors.yellowAccent,

                                  ),
                                  onPressed: ()async{
                                    await signup();
                                  },
                                  child: const styleText(val: "Sign in", size: 20, color: Colors.black),
                                ),
                              ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const styleText(val: "You already have an account? ", size: 10, color: Colors.white),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed("login");
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2
                                    )
                                  )
                                ),
                                child: const styleText(val: "login", size: 10, color: Colors.white,),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

          ],
        ),
      )
    );
  }
}
