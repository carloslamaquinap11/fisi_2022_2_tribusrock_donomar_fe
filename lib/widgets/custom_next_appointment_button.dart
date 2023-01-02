import 'package:fisi_2022_2_tribusrock_donomar_fe/main.dart';
import 'package:flutter/material.dart';

class CustomNextAppointmentButton extends StatelessWidget {
  final String? name;
  final String? time;

  const CustomNextAppointmentButton({
    Key? key,
    this.name,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(230, 80),
        maximumSize: const Size(240, 110),
        elevation: 5,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Flexible(
            child: Container(
              child: Text(
                name!,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF57C2FE)),
                maxLines: 2,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.alarm_add_outlined,
                color: Color(0xFF57C2FE),
              ),
              Text(
                time!,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
