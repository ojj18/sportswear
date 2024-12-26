import 'package:flutter/material.dart';
import 'package:sport_app/Common/app_styles.dart';

class TextFieldComponent extends StatefulWidget {
  final double? textFieldHeight; // It will hold the textfield height
  final double? textFieldWidth; // It will hold the textfield width
  final String? labelText; // It will hold the label text
  final String? hintText; // It will hold the hint text
  final IconData? suffixIcon; // It wil hold the suffix icon
  final Color? suffixIconColor; // It will hold the suffix icon color
  final bool isborderEnable; // It will hold the flag
  final Function? onSaved;
  final Function? onError;
  final Function? onChanged;
  final TextEditingController? fieldController;
  final TextInputType? textInputType;
  final String? initialValue;
  final bool obscureText;
  const TextFieldComponent(
      {this.textFieldHeight,
      this.textFieldWidth,
      this.labelText,
      this.hintText,
      this.suffixIcon,
      this.suffixIconColor,
      this.isborderEnable = true,
      this.onChanged,
      this.onSaved,
      this.onError,
      this.fieldController,
      this.textInputType = TextInputType.none,
      this.initialValue,
      this.obscureText = false,
      super.key});

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: widget.textFieldHeight ?? 60.0,
      width: widget.textFieldWidth ?? 200.0,
      child: TextFormField(
        obscureText: widget.obscureText,
        initialValue: widget.initialValue,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.bodySmall,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          suffixIcon: Icon(
            widget.suffixIcon,
            color: widget.suffixIconColor ?? textColor,
          ),
          enabledBorder: widget.isborderEnable
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
          focusedBorder: widget.isborderEnable
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
          errorBorder: widget.isborderEnable
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: errorColor,
                  ),
                )
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: errorColor,
                  ),
                ),
          focusedErrorBorder: widget.isborderEnable
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: errorColor,
                  ),
                )
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: errorColor,
                  ),
                ),
        ),
        controller: widget.fieldController,
        onChanged: (value) {
          if (widget.onChanged != null) widget.onChanged!(value);
        },
        onSaved: (value) {
          if (widget.onSaved != null) widget.onSaved!(value);
        },
        validator: (value) {
          if (widget.onError != null) return widget.onError!(value);
          return null;
        },
      ),
    );
  }
}
