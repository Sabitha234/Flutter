import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zeptodesign/Groceries.dart';
import 'Connect.dart';
import 'Show.dart';
import 'View.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imagesList = [
    'img/5.jpeg',
    'img/6.jpeg',
    'img/7.jpeg',
    'img/8.jpeg',
    'img/9.jpeg',
    'img/10.jpeg',
    'img/11.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
   // double wholewidth=MediaQuery.of(context).size.width;
   return Scaffold(
     appBar: AppBar(
       leading: CircleAvatar(
         backgroundImage: AssetImage('img/1.png'),
       ),
        title: Text("ZEPTO",style: TextStyle(fontSize:25 ),),
       actions: [
         Icon(Icons.book),
         Padding(padding: EdgeInsets.all(10)),
         Icon(Icons.search),
         Padding(padding: EdgeInsets.all(10)),
         Icon(Icons.person),
         Padding(padding: EdgeInsets.all(10)),
       ],

     ),
     backgroundColor: Colors.white,
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             width: double.infinity,
            // height: 100,
             child: Image.asset('img/4.jpeg'),
               ),
           SingleChildScrollView(
             child: Container(
               color: Colors.purple,
               child: SearchBarAnimation(
                   textEditingController: TextEditingController(),
                   isOriginalAnimation: true,
                   trailingWidget:Icon(Icons.search),
                   secondaryButtonWidget: Icon(Icons.close),
                   buttonWidget: Icon(Icons.search))
             ),
           ),
           Container(
              color: Colors.purple,
             child:CarouselSlider(
               options: CarouselOptions(
                 viewportFraction: 0.9,
                 autoPlayAnimationDuration: const Duration(milliseconds: 100),
                 autoPlay: true,
                 enlargeCenterPage: true,
               ),
               items: imagesList
                   .map(
                     (item) => Center(
                   child: Image.asset(
                     item,
                     fit: BoxFit.cover,
                   ),
                 ),
               )
                   .toList(),
             ),
           ),
           ListTile(
             onTap: (){},
            title: Text("EXPLORE BY CATEGORY",style: TextStyle(color: Colors.black,fontSize: 20),),
             trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
           ),
           Container(
             height: 150.0,
             padding: EdgeInsets.all(10),
              child: Row(
                 children: [
                   Expanded(
                     child: Card(
                       color: Colors.purple,
                       child: Padding(
                         padding: const EdgeInsets.all(10),
                         child: SingleChildScrollView(
                           child: Column(
                             children: [
                               Text("Fruits And Vegetables"),
                               Image.asset('img/12.png',width:100,height: 100 ,),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                   Expanded(
                     child: Card(
                       color: Colors.purple,
                       child: Padding(
                         padding: const EdgeInsets.all(10),
                         child: SingleChildScrollView(
                           child: Column(
                             children: [
                               Text("Oil And Atta"),
                               Image.asset('img/13.png',width:100,height: 100 ,),
                             ],
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
               )
           )
           ,
           Column(
             children: [
               Container(
                 padding: EdgeInsets.all(10),
                   child: Row(
                     children: [
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Egg"),
                                   Image.asset('img/17.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Juice"),
                                   Image.asset('img/18.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Pasta"),
                                   Image.asset('img/19.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),

                     ],
                   )
               ),
               //SizedBox(height: 20.0,),
               Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     children: [
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Rice"),
                                   Image.asset('img/21.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Ginger"),
                                   Image.asset('img/14.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Noodels"),
                                   Image.asset('img/20.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),

                     ],
                   )
               ),
               Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     children: [
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Meat"),
                                   Image.asset('img/23.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Apple"),
                                   Image.asset('img/24.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Card(
                           color: Colors.grey,
                           child: Padding(
                             padding: const EdgeInsets.all(10),
                             child: SingleChildScrollView(
                               child: Column(
                                 children: [
                                   Text("Oil"),
                                   Image.asset('img/25.png',width:100,height: 100 ,),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       )
                     ],
                   )
               ),
             ],
           ),
           ListTile(
             onTap: (){},
             leading: Text("EXCLUSIVE OFFER",style: TextStyle(color: Colors.black,fontSize: 20)),
             trailing: Icon(Icons.arrow_forward_ios),
           ),

           Connect(),
           ListTile(
             onTap: (){},
             leading: Text("BEST SELLING",style: TextStyle(color: Colors.black,fontSize: 20),),
             trailing: Icon(Icons.arrow_forward_ios),
           ),
           Show(),
           ListTile(
             onTap: (){},
             leading: Text("GROCERIES",style: TextStyle(color: Colors.black,fontSize: 20)),
             trailing: Icon(Icons.arrow_forward_ios),
           ),
           Groceries(),
           ListTile(
             onTap: (){},
             leading: Text("MEAT",style: TextStyle(color: Colors.black,fontSize: 20)),
             trailing: Icon(Icons.arrow_forward_ios),
           ),
          View1(),
         ],
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.shifting,
         items: [
       BottomNavigationBarItem(icon: Icon(Icons.shopify_sharp,color: Colors.white,),label: 'Shop',backgroundColor: Colors.purple),
       BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.white),label: 'Explore'),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.white),label: 'Cart'),
       BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.white),label: 'Favorite'),
       BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white),label: 'Account'),
     ]),
     );
  }

}
