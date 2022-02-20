// Flutter imports:
import 'package:flutter/material.dart';

class DynamicButton extends StatefulWidget {
  final double? width, height;
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? backgroudColor;

  const DynamicButton({
    Key? key,
    this.width,
    this.height,
    this.onPressed,
    this.backgroudColor,
    @required this.child,
  }) : super(key: key);

  @override
  _DynamicButtonState createState() => _DynamicButtonState();
}

class _DynamicButtonState extends State<DynamicButton> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: widget.width ?? size.width * .8,
      height: widget.height ?? 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(widget.backgroudColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        child: widget.child,
        onPressed: widget.onPressed,
      ),
    );
  }
}
