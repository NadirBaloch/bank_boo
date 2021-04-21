import 'package:bank_boo/components/constants.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('images/logo.png'),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "HOME",
                style: kMenuTextStyle,
              ),
              Text(
                "FEATURES",
                style: kMenuTextStyle,
              ),
              Text(
                "ABOUT",
                style: kMenuTextStyle,
              ),
              Text(
                "CONTACT",
                style: kMenuTextStyle,
              ),
              MaterialButton(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'SIGN IN',
                  style: kMenuTextStyle,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
