import 'package:flutter/material.dart';

class ListOfImages extends StatefulWidget {
   ListOfImages({super.key});

  @override

  State<ListOfImages> createState() => _ListOfImagesState();
}

class _ListOfImagesState extends State<ListOfImages> {
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return
        Scaffold(
          backgroundColor: Colors.transparent,
          body:

        Container(
          color: Color.fromRGBO(6, 17, 28, 1),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: ImageMaps.length,
              itemBuilder: ( context , index){
                return


                  Container(

                    width: 350, // Adjust the width as needed
                    margin: const EdgeInsets.all(8.0), // Optional: add margin around images
                    child: Stack(
                        children:[ Container(decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                          child: Padding(

                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                              "${ImageMaps[index]}",height: 500,fit: BoxFit.fitHeight,

                              // Adjust the fit as needed
                            ),
                          ),
                        ),
                          Image.asset("${ImageUP[index]}"),
                          Text("${textImage[index]}",style: TextStyle(fontSize: 35,fontFamily: 'Valorant',fontWeight: FontWeight.bold),)
                        ]
                    ),
                  );
              }

          ),
        ),);
  }
 final List<String> ImageMaps =[
   "assets/images/Ascent_m.png",
   "assets/images/Bind_m.png",
   "assets/images/Breeze_m.png",
   "assets/images/Fracture_m.png",
   "assets/images/Haven_m.png",
   "assets/images/Icebox_m.png",
   "assets/images/Lotus_m.png",
   "assets/images/Pearl_m.png",
   "assets/images/Split_m.png"
 ];

  final List<String> ImageUP =[
    "assets/images/Ascent_u.png",
    "assets/images/Bind_u.png",
    "assets/images/Breeze_u.png",
    "assets/images/Fracture_u.png",
    "assets/images/Haven_u.png",
    "assets/images/Icebox_u.png",
    "assets/images/Lotus_u.png",
    "assets/images/Pearl_u.png",
    "assets/images/Split_u.png"
  ];
  final List<String> textImage = [
    "Ascent","Bind","Breeze","Fracture","Haven","Icebox","Lotus","Pearl","Split"
    
  ];

}









