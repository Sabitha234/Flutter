import 'package:flutter/material.dart';
class Groceries extends StatefulWidget {
  const Groceries({Key? key}) : super(key: key);

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  var img=[
    'img/36.png',
    'img/37.png',
  ];
  var name=['Pulses','Rice'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          //shrinkWrap: true,
          itemCount: name.length,
          itemBuilder: (BuildContext context,int index){
            return Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      color: Colors.lightGreenAccent,
                      width: 200,
                      child: Row(
                        children: [

                          Image.asset(img[index],width:100,height: 100 ,),
                          Text(name[index]),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
