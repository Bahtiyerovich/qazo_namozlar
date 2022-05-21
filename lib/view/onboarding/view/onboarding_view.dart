import 'package:flutter/material.dart';
import 'package:qazonamozlar/core/constants/sizeconfig.dart';

class OnboardView extends StatefulWidget {
  OnboardView({Key? key}) : super(key: key);

  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  List images = ["Rectangle2.png", "Rectangle3.png", "Rectangle4.png"];
  List text1 = [
    "Namozingizni to’la-to’kis qiling.",
    "Consectetur ut nisl, turpis arcu.",
    "Massa at magna quisque."
  ];
  List text2 = [
    "Vitae a odio fusce eu, eget massa ut. Consectetur ut nisl, turpis arcu massa at magna quisque.",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration",
    "Integer neque erat, vehicula nec ante vel, congue sagittis elit. Nullam semper eu odio at placerat. Etiam lacinia lorem dui."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Column(
            children: [
              Container(
                width: getProportionateScreenWidth(375),
                height: getProportionateScreenHeight(356),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/" + images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (indexDots) {
                          return Container(
                            padding: EdgeInsets.only(
                                bottom: getProportionateScreenHeight(2),
                                left: getProportionateScreenWidth(3)),
                            width: index == indexDots ? 20 : 7,
                            height: index == indexDots ? 7 : 7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index == indexDots
                                    ? Color(0xFF2AC25E)
                                    : Color(0xFF2AC25E).withOpacity(0.3)),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Container(
                height: getProportionateScreenHeight(27),
                child: Text(
                  text1[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(22),
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Container(
                height: getProportionateScreenHeight(66),
                width: getProportionateScreenWidth(335),
                child: Text(
                  text2[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8A8A90),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              GestureDetector(
                onTap: () {
// Navigator.push(context)
                  print(index);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: getProportionateScreenHeight(56),
                  width: getProportionateScreenWidth(315),
                  decoration: BoxDecoration(
                      color: Color(0xFF2AC25E),
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    "Ro'yxatdan o'tish",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(17),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
