import 'package:flutter/material.dart';
class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  var img=[
    'img/33.png',
    'img/34.png',
    'img/35.png',
    'img/24.png',
    'img/25.png',
  ];
  var name=['Beef','Chicken','Mutton'];
  var wait=['1kg','1Kg','1Kg'];
  var amount=['Rs.200','Rs.300','Rs.400'];
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
