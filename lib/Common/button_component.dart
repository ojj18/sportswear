import 'package:flutter/material.dart';
import '/Common/app_styles.dart';

class ButtonComponent extends StatefulWidget {
  final String? buttonTitle; // It will hold the button text
  final Color? borderColor; // It will hold the button border color
  final Color? buttonTextColor; // It will hold the button text color
  final Color? bgButtonColor; // It will hold the button background color
  final VoidCallback? buttonEvent; // It will hold the button event
  final double? borderRadius; // It will hold the button border radius
  final double? buttonHeight; // It will hold the button height
  final double? buttonWidth; // It will hold the button width
  const ButtonComponent(
      {this.buttonTextColor,
      this.borderColor,
      this.bgButtonColor,
      this.buttonTitle,
      this.buttonEvent,
      this.borderRadius,
      this.buttonHeight,
      this.buttonWidth,
      super.key});

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.buttonEvent != null) {
          widget.buttonEvent!();
        }
      },
      child: Container(
        height: widget.buttonHeight ?? 60.0,
        width: widget.buttonWidth ?? 200.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.borderColor ?? Theme.of(context).secondaryHeaderColor,
            width: 1.0,
          ),
          borderRadius:
              BorderRadius.circular(widget.borderRadius ?? fontSize10),
          color: widget.bgButtonColor ?? Theme.of(context).secondaryHeaderColor,
        ),
        child: Center(
          child: Text(
            widget.buttonTitle ?? "",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: widget.buttonTextColor ?? bgColor),
          ),
        ),
      ),
    );
  }
}
