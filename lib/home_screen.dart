

import 'package:flutter/material.dart';

import 'Collection.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int expandedIndex = -1;
  var collections = [
    Collection(
      title: "shirts",
      images: [
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content(),
        content()
      ]
    ),
    Collection(
        title: "pants",
        images: [
          content(),
          content(),
          content(),
          content(),
          content(),
          content()
        ]
    ),
    Collection(
        title: "pants",
        images: [
          content(),
          content(),
          content(),
          content(),
          content(),
          content()
        ]
    ),
    Collection(
        title: "pants",
        images: [
          content(),
          content(),
          content(),
          content(),
          content(),
          content()
        ]
    ),
    Collection(
        title: "pants",
        images: [
          content(),
          content(),
          content(),
          content(),
          content(),
          content()
        ]
    )
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Collections'),
      ),
      body: ListView.builder(
        itemCount: collections.length,
        itemBuilder:(context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child:GestureDetector(
              onTap: (){
                setState(() {
                    expandedIndex = (expandedIndex==index)?-1:index;
                });
              },
              child: Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(child: Text("Collections ${index+1}")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: (expandedIndex==index)?Icon(Icons.keyboard_arrow_up):Icon(Icons.keyboard_arrow_down)
                        ),
                      ],
                    ),
                    AnimatedSize(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: expandedIndex == index
                          ?
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:Row(
                              children: List.generate(
                                collections[index].images.length,
                                    (imgIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: collections[index].images[imgIndex],
                                  );
                                },
                              ),
                            ),
                          )
                          : SizedBox(),
                    )
                  ],
                ),

              ),
            )
          );
      },)

    );
  }
}

Widget content(){
  return Container(
    width: 120,
      height: 120,
      child: Placeholder(),
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(20)
  ),    
  );
}