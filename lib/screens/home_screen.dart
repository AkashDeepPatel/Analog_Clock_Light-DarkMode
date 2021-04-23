import 'package:analog_clock_flutter/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:analog_clock_flutter/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(""),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/Settings.svg",
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      actions: [buildAddButton(context)],
    );
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(10)),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: getProportionateScreenWidth(32.0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
    );
  }
}
