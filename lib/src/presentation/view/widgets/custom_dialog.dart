import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    this.child,
    this.onClose,
    this.height = 500,
    this.width = 300,
    this.minHeight = false,
  }) : super(key: key);

  final Widget? child;
  final double height;
  final double width;
  final VoidCallback? onClose;
  final bool minHeight;

  @override
  Widget build(BuildContext context) {
    final childPadding = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: child,
    );

    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        color: Colors.white,
        height: minHeight ? null : height,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (onClose != null)
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: onClose,
                  child: const Icon(Icons.close, size: 18),
                ),
              ),
            if (minHeight)
              childPadding
            else
              Expanded(
                child: childPadding,
              ),
          ],
        ),
      ),
    );
  }
}
