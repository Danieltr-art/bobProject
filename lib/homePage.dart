import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:the_project/components/styleText.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  final List list = [
    {"title" : 'Inactive Schedule', "cost" : "for free"},
    {"title" : 'Beginer Schedule' , "cost" : "for 10\$"},
    {"title" : 'Intermediate Schedule', "cost" : "for 15\$"},
    {"title" : 'Expert Schedule',  "cost" : "for 22\$"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/body-1846668_1280.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.8,
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: 250,
                  width: 250,
                  child: const CircleAvatar(backgroundImage: AssetImage('image/WhatsApp Image 2024-09-12 at 10.53.59_8b858bb5.jpg'), backgroundColor: Colors.yellowAccent,),
                ),
              ),
             const Opacity(
               opacity: 0.8,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   styleText(val: "Your ", size: 30, color: Colors.white),
                   styleText(val: "Best ", size: 30, color: Colors.yellowAccent),
                   styleText(val: "Choice", size: 30, color: Colors.white),
                 ],
               ),
             ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      styleText(val: "Abou Us", size: 30, color: Colors.white),
                      styleText(val: "VIP Gym: Your personalized fitness journey with expert guidance, real-time progress tracking, and exclusive workouts. Elevate your fitness game today!", size: 15, color: Colors.white)
                    ],
                  ),
                )
              ),
              Opacity(
                opacity: 0.9,
                child: Container(
                  height: 250,
                  padding: const EdgeInsets.all(20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 210, width: 200,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              styleText(val: list[index]["title"], size: 20, color: Colors.yellowAccent,),
                              styleText(val: list[index]["cost"], size: 15, color: Colors.white),
                            ],
                          ),
                        );
                      },
                  ),
                ),
              ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          padding: const EdgeInsets.all(15),
                          onPressed: (){
                            Navigator.of(context).pushNamed("signup");
                          },
                          child: const styleText(val: "Sign up", size: 20, color: Colors.yellowAccent),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: MaterialButton(
                          padding: const EdgeInsets.all(15),
                          color: Colors.yellowAccent,
                          onPressed: (){
                            Navigator.of(context).pushNamed("login");
                          },
                          child: const styleText(val: "Login", size: 20, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
