import 'package:flutter/material.dart';
import 'package:hope/constants/colors.dart';

const TextStyle descriptionStyle = TextStyle(
  fontSize: 14,
  color: textLight,
  fontWeight: FontWeight.w400,
);

InputDecoration inputDecoration = InputDecoration(
  hintText: "Hind Text",
  fillColor: bgBlack,
  hintStyle: const TextStyle(color: textLight, fontSize: 14),
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: mainYellow, width: 1),
    borderRadius: BorderRadius.circular(100),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: mainYellow, width: 1),
    borderRadius: BorderRadius.circular(100),
  ),
);

GestureDetector getButton(String text, Function action) {
  return GestureDetector(
    onTap: () {
      action();
    },
    child: Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: bgBlack,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 2,
          color: mainYellow,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
