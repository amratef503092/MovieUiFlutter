import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://terrigen-cdn-dev.marvel.com/content/prod/1x/halfstack_busshelter_48x70_moonknight_v7_lg_0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.share,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: Colors.black)),
                      child: Icon(Icons.star_border, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text(
                "New . Season 1 . 2022 .Disney +",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text(
                "Moon Knight",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildcard("Fantasy"),
                buildcard("Super hero"),
                buildcard("Action"),
                buildcard("Adventure"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "S1:E3 The Friendly Type",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "53 min",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                trackHeight: 6,
              ),
              child: Slider(
                value: _currentSliderValue,
                max: 100,
                activeColor: Color(0xff5c5e61),
                inactiveColor: Color(0xff121821),
                thumbColor: Color(0xff5c5e61),
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  // setState(() {
                  //   _currentSliderValue = value;
                  // });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff101922)),
                child: Center(
                    child: Text(
                  "Continue Watching",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Color(0xff181d27),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Image(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/IMDb_Logo_Square.svg/2048px-IMDb_Logo_Square.svg.png'),
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "7.7 /10",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "54k",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Image(
                                image: NetworkImage(
                                    'https://play-lh.googleusercontent.com/xoGGYH2LgLibLDBoxMg-ZE16b-RNfITw_OgXBWRAPin2FZY4FGB9QKBYApR-0rSCkQ'),
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Watch Now",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "Subscription",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "With Marc in the forefront and Harrow near Ammit's tomb, Marc needs to navigate Cairo while putting his differences aside with Layla and Steven without jeopardizing their mission.",
                      style: const TextStyle(
                        color: Color(0xff5d5b63),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Cast",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "See all >",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        castImage(
                            'https://m.media-amazon.com/images/M/MV5BMTQ2ODE2NDQ5OF5BMl5BanBnXkFtZTcwOTU3OTM1OQ@@._V1_UY317_CR5,0,214,317_AL_.jpg'),
                        castImage(
                            'https://m.media-amazon.com/images/M/MV5BMTk4NDMxMTI0MF5BMl5BanBnXkFtZTYwMjE3ODE0._V1_UY317_CR5,0,214,317_AL_.jpg'),
                        castImage(
                            'https://i.egycdn.com/pic/YWxZRWNtVHZtRW1tbWJtakVjUG12bUxjbWJsbUx3.jpg'),
                        castImage(
                            'https://i.egycdn.com/pic/YWxZRWNtVFR2bUxjRWNtbW1ZVEVtSWFtbUs.jpg'),
                        castImage(
                            'https://i.egycdn.com/pic/YWxZRWNtTE5tbW1FY21tbVR2bW1tYm1tbHg.jpg'),
                        castImage(
                            'https://m.media-amazon.com/images/M/MV5BYWViYWU1MjQtZmYwMy00ZjUyLTkyYzgtMmZhMmUwNDU0ZTI4XkEyXkFqcGdeQXVyNDAzNDk0MTQ@._V1_UY317_CR51,0,214,317_AL_.jpg'),
                        castImage(
                            'https://m.media-amazon.com/images/M/MV5BMjM1OTkxMzczNF5BMl5BanBnXkFtZTgwNTMwMzI4MTE@._V1_UX214_CR0,0,214,317_AL_.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //       color: Colors.black,
            //
            //   ),
            //   height: MediaQuery.of(context).size.height*0.3,
            // )
          ],
        ),
      ),
    );
  }

  Widget  castImage(String image) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: NetworkImage(image),
            fit: BoxFit.cover,
            width: 70,
          )),
    );
  }

  Container buildcard(String text) {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xff151922).withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
