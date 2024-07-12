import 'package:flutter/material.dart';

class TendenciasButtonComponent extends StatelessWidget {
  const TendenciasButtonComponent({
    super.key,
    required this.isTodaySelected,
    required this.onTapHoje,
    required this.onTapSemana,
  });

  final bool isTodaySelected;
  final Function()? onTapHoje;
  final Function()? onTapSemana;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Tendências',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 12),
        Container(
          height: 30,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 5, 68, 120)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 3,
                child: GestureDetector(
                  onTap: onTapHoje,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: isTodaySelected ? Colors.blue : Colors.white,
                    ),
                    child: Center(
                      child: Text('Hoje'),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: GestureDetector(
                  onTap: onTapSemana,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: isTodaySelected ? Colors.white : Colors.blue),
                    child: Center(
                      child: Text('Nesta Semana'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
