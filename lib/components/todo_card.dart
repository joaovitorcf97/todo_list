import 'package:flutter/material.dart';
import 'package:todo_list/theme.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final String description;
  final DateTime date;

  const TodoCard({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: appTheme.textTitleCard,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: appTheme.textDescriptionCard,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  date.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: appTheme.dateCard,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
