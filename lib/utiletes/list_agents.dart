import 'package:flutter/material.dart';

class ListOfImages2 extends StatelessWidget {
   ListOfImages2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ListImages.length,
          itemBuilder: ( context , index){
            return


              Container(
                color:Color.fromRGBO(6, 17, 28, 1),
                width: 350,
                height: 400,// Adjust the width as needed
                margin: const EdgeInsets.all(8.5), // Optional: add margin around images
                child: Stack(
                  children:[ Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(

                      padding: const EdgeInsets.all(1),
                      child: Image.asset(
                        "${ListImages[index]}",height: 500,fit: BoxFit.fitHeight,

                        // Adjust the fit as needed
                      ),
                    ),
                  ),
                    Image.asset("${ListImage[index]}")
                  ]
                ),
              );
          }

      ),
    );
  } final ListImages = <String>[
     "assets/images/Rectangle 1.png",
     "assets/images/Rectangle 2.png",
     "assets/images/Rectangle 3.png",
    "assets/images/Rectangle 4.png",
     "assets/images/Rectangle 5.png",
     "assets/images/Rectangle 6.png",
     "assets/images/Rectangle 7.png",
     "assets/images/Rectangle 8.png",
     "assets/images/Rectangle 9.png",
     "assets/images/Rectangle 10.png",
     "assets/images/Rectangle 11.png",
     "assets/images/Rectangle 12.png",
     "assets/images/Rectangle 13.png",
     "assets/images/Rectangle 14.png",
     "assets/images/Rectangle 15.png",
     "assets/images/Rectangle 16.png",
     "assets/images/Rectangle 17.png",
     "assets/images/Rectangle 18.png",
     "assets/images/Rectangle 19.png",
     "assets/images/Rectangle 20.png",
     "assets/images/Rectangle 21.png"
  ];

   final ListImage = <String>[
     "assets/images/a.png",
     "assets/images/c.png",
     "assets/images/b.png",
     "assets/images/d.png",
     "assets/images/e.png",
     "assets/images/f.png",
     "assets/images/g.png",
     "assets/images/i.png",
     "assets/images/k.png",
     "assets/images/l.png",
     "assets/images/m.png",
     "assets/images/n.png",
     "assets/images/o.png",
     "assets/images/p.png",
     "assets/images/q.png",
     "assets/images/r.png",
     "assets/images/s.png",
     "assets/images/t.png",
     "assets/images/u.png",
     "assets/images/v.png",
     "assets/images/y.png",
   ];
  }

