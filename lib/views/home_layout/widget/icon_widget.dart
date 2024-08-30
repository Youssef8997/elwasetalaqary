import 'package:elwaset_elaqary_new/utls/manger/colors_manger.dart';
import 'package:flutter/cupertino.dart';

class IconWidget extends StatefulWidget {
  final String iconPath;
  final String name;
  final int index;
  final int currentIndex;

  const IconWidget({super.key, required this.iconPath, required this.name, required this.index, required this.currentIndex});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.iconPath,color: widget.currentIndex==widget.index?ColorsManger.linerColor[2]:const Color(0xff6C6C6C),),
        SizedBox(height: 5),
        Text(widget.name, style: TextStyle(fontSize: 14, fontWeight: widget.currentIndex==widget.index? FontWeight.bold: FontWeight.normal, color: widget.currentIndex==widget.index? ColorsManger.linerColor[2]: const Color(0xff6C6C6C),),)
      ],
    );
  }
}
