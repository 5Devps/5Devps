import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({super.key});

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  void _setRatingAsFour() {
    setState(() {
      _rating = 4;
    });
  }

  void _setRatingAsFive() {
    setState(() {
      _rating = 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 15;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        //STAR 1
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.blue[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),

        //STAR 2
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.blue[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),

        //STAR 3
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.blue[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),

        //STAR 4

        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 4
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.blue[500],
            onPressed: _setRatingAsFour,
            iconSize: _size,
          ),
        ),

        //STAR 5
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 5
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.blue[500],
            onPressed: _setRatingAsFive,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
