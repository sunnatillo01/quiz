import 'package:flutter/material.dart';

import 'package:quiz/screens/welcome/welcome_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 148.0,
              width: 266.0,
              child: const Image(
                image: AssetImage(
                  "assets/images/2.jpg",
                ),
              ),
            ),

           const  SizedBox(height: 10),
           Container(
            child: const Text('Menu',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
           ),
           const SizedBox(height: 10),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                      height: 70.0,
                      width: 73.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFECF0F1),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/4.jpg",         
                ),
              ),
                     ),
                     const SizedBox(height: 10),
                    const Text('Quiz',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                      height: 70.0,
                      width: 73.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFD35400),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/4.jpg",
                ),
              ),
                     ),
                      const SizedBox(height: 10),
                    const Text('Quiz',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                      height: 70.0,
                      width: 73.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFECF0F1),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/5.jpg",
                ),
              ),
                     ),
                      const SizedBox(height: 10),
                    const Text('Quiz',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                      height: 70.0,
                      width: 73.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFECF0F1),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/6.jpg",
                ),
              ),
                     ),
                      const SizedBox(height: 10),
                    const Text('Quiz',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                   ],
                 ),
               ),
             ],
           ),
           const SizedBox(height: 10),
           Container(
            child: const Text('Quiz Category',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
           ),
            const SizedBox(height: 20),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                      width: 136.0,
                        height: 152.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF3498DB),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/4.jpg",         
                ),
              ),
                     ),
                    
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                       width: 136.0,
                        height: 152.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF9B59B6),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/4.jpg",
                ),
              ),
                     ),
                    
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                      width: 136.0,
                      height: 152.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF3498DB),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/5.jpg",
                ),
              ),
                     ),
                 
                   ],
                 ),
               ),
             ],
           ),
            const SizedBox(height: 10),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                      width: 136.0,
                      height: 152.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF9B59B6),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/4.jpg",         
                ),
              ),
                     ),
                    
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                       width: 136.0,
                       height: 152.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF3498DB),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/4.jpg",
                ),
              ),
                     ),
                     
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(6.0),
                 child: Column(
                   children: [
                     Container(
                       width: 136.0,
                       height: 152.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF9B59B6),
                      ),
                       child: const Image(
                image: AssetImage(
                  "assets/images/5.jpg",
                ),
              ),
                     ),
                    
                   ],
                 ),
               ),
             ],
           ),

            

          
          ],
        ),
      ),
      
    );
  }
}
