import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:promina_agency/Controller/gallerycontroller/galleryController.dart';

import '../api/apiconstants.dart';
import '../widgets/headerTile.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});
  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  galleryController movieController = Get.put(galleryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children:[

              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/gallery .png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              HeaderTile(),

       /* Row(
          children: [
            InkWell(

              child: Container(
                  padding: EdgeInsets.only(top: 50,left: 50),
                //  width: 100,
                //height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFF707070),
                ),
                child: Row(
                  children: [
                    Icon(),
                    Text(
                      "Log out",
                      style: TextStyle(color: Colors.deepOrange),

                    ),
                  ],
                )
              ),

            )
          ],
        ),*/
        //      movieController.trendingMovies.isNotEmpty?
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.52),
                itemCount: movieController.trendingMovies.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            ApiConstants.baseImgUrl +
                                movieController.trendingMovies[index].posterPath
                                    .toString(),

                          ),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ),

                  );

                },


              ),

            ]

        )




    );
  }
}