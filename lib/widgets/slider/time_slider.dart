library time_slider;

import 'package:flutter/material.dart';

class ForecastModel {
  bool isSelected;
  String hourText;

  ForecastModel(this.isSelected, this.hourText);
}

class TimeSlider extends StatefulWidget {
  final List<ForecastModel> hoursList;

  final Color color;
  final Color selectedColor;
  final Color textColor;
  final Color selectedTextColor;
  final double height;
  final double width;
  final VoidCallback onPressed;
  final double separation;

  const TimeSlider(
      {Key? key,
      required this.hoursList,
      required this.color,
      required this.selectedColor,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.textColor,
      required this.selectedTextColor,
      required this.separation})
      : super(key: key);

  @override
  TimeSliderState createState() => TimeSliderState();
}

class TimeSliderState extends State<TimeSlider> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemCount: widget.hoursList.length,
      itemBuilder: (context, index) {
        return Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  for (var element in widget.hoursList) {
                    element.isSelected = false;
                  }
                  widget.hoursList[index].isSelected = true;
                });
                widget.onPressed();
              },
              child: Container(
                  padding: const EdgeInsets.all(5),
                  width: widget.width,
                  height: widget.height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: (widget.hoursList[index].isSelected == true)
                        ? widget.color
                        : widget.selectedColor,
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: Text(
                    widget.hoursList[index].hourText,
                    style: TextStyle(
                      color: (widget.hoursList[index].isSelected == true)
                          ? widget.textColor
                          : widget.selectedTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
            SizedBox(
              width: widget.separation,
            )
          ],
        );
      },
    );
  }
}
