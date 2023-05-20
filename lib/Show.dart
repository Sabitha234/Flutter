import 'package:flutter/material.dart';
class Show extends StatefulWidget {
  const Show({Key? key}) : super(key: key);

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  var img=[
    'img/30.png',
    'img/31.png',
    'img/32.png',
    'img/38.png',
    'img/39.png',
  ];
  var name=['Coco_cola','Pepsi','Sprite','Lays','Little Hearts'];
  var wait=['1Bottle','1Bottle','1Bottle','1Packet','1Packet'];
  var amount=['Rs.40','Rs.43','Rs.45','Rs.20','Rs.20'];
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
                    child: Column(
                      children: [
                        Text(name[index]),
                        Image.asset(img[index],width:100,height: 100 ,),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(wait[index]),
                              Row(
                                  children:[
                                    OutlinedButton(onPressed: (){}, child: Icon(Icons.add)),
                                    TextButton(onPressed: (){}, child: Text(amount[index])),
                                    OutlinedButton(onPressed: (){}, child: Icon(Icons.remove))
                                  ]
                              )

                            ]
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
