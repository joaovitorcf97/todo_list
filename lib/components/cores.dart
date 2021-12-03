import 'package:flutter/material.dart';

class Cores extends StatefulWidget {
  final Function corSelecionada;

  const Cores({
    Key? key,
    required this.corSelecionada,
  }) : super(key: key);

  @override
  State<Cores> createState() => _CoresState();
}

class _CoresState extends State<Cores> {
  Color? selectedColor;

  List<MaterialColor> cores = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
  ];

  @override
  void initState() {
    super.initState();

    selectedColor = cores.first;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cores.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            selectedColor = cores[i];
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Column(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    border: selectedColor == cores[i]
                        ? Border.all(
                            width: 4,
                            color: Colors.white,
                          )
                        : null,
                    color: cores[i],
                    borderRadius: BorderRadius.circular(54),
                  ),
                  child: Radio<Color>(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    activeColor: Colors.transparent,
                    value: cores[i],
                    groupValue: selectedColor,
                    onChanged: (s) {
                      selectedColor = s as Color;
                      setState(() {
                        widget.corSelecionada(selectedColor);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
