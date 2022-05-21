import 'package:flutter/material.dart';
import 'package:qazonamozlar/core/constants/sizeconfig.dart';
import 'package:qazonamozlar/view/onboarding/view/onboarding_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  var rasm = ["uzb1.png", "uzb2.png", "rus.png"];
  var tillar = ["O’zbek tili", "Ўзбек тили", "Русский язык"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(80),
          ),
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(91),
                  width: getProportionateScreenWidth(144),
                  child: Image.asset("assets/images/qazoimg.png"),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(80),
                ),
                Container(
                  alignment: Alignment.center,
                  height: getProportionateScreenHeight(25),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    " Tilni tanlang / Выберите язык ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(20)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(71),
          ),
          Container(
            height: getProportionateScreenHeight(240),
            width: getProportionateScreenWidth(335),
            // color: Colors.grey,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(335),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          print(index);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnboardView()));
                        },
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/" + "${rasm[index]}"),
                        ),
                        title: Text(
                          "${tillar[index]}",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(5),
                      ),
                      const Divider(thickness: 1),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
