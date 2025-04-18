import 'package:flutter/material.dart';
import 'package:recipe_app/core/ui/color_styles.dart';
import 'package:recipe_app/core/ui/text_styles.dart';

class InputFieldWidget extends StatelessWidget {
  final void Function(String value) onValueChange;
  final String? label;
  final Icon? icon;
  final String placeHolder;
  final double? verticalHeight;

  const InputFieldWidget({
    super.key,
    this.label,
    this.icon,
    this.verticalHeight,
    required this.placeHolder,
    required this.onValueChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  label!,
                  style: TextStyles.smallRegular(color: ColorStyles.labelColor),
                ),
              )
            : const SizedBox.shrink(),
        TextField(
          key: const Key('textField'),
          onChanged: (text) => onValueChange(text),
          decoration: InputDecoration(
            hintText: placeHolder,
            hintStyle: TextStyles.smallRegular(color: ColorStyles.gray4),
            prefixIcon: icon,
            contentPadding: EdgeInsets.symmetric(
                vertical: verticalHeight ?? 12, horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorStyles.gray4, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorStyles.primary80, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
