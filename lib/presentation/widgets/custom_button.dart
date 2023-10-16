import 'package:flutter/material.dart';
import 'package:my_maps/config/text_style.dart';
import 'package:my_maps/core/utalis/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Function function;
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // ignore: sort_child_properties_last
      child: Text(text,style: StylesText.textStyle14,),
      onPressed: () => function ,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(AppColor.balck)
      ),
    );
  }
}
