import 'package:flutter/material.dart';
class Connect extends StatefulWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  var img=[
    'img/15.png',
    'img/26.png',
    'img/27.png',
    'img/28.png',
    'img/29.png',
  ];
  var name=['Apple','Banana','Orange','Kiwi','Grapes'];
  var wait=['1kg','7Pcs','1Kg','1Kg','1Kg','1kg'];
  var amount=['Rs.120','Rs.80','Rs.100','Rs.100','Rs.90'];
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
