import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicationNotificationTimeSelector extends StatefulWidget {
  final bool add;
  final VoidCallback onTap;

  MedicationNotificationTimeSelector(
      {Key? key, required this.add, required this.onTap})
      : super(key: key);

  @override
  _MedicationNotificationTimeSelectorState createState() =>
      _MedicationNotificationTimeSelectorState();
}

class _MedicationNotificationTimeSelectorState
    extends State<MedicationNotificationTimeSelector> {
  late TimeOfDay _time = new TimeOfDay.now();
  late TextEditingController _timeController =
      TextEditingController(text: _time.format(context));

  Future<void> _selectTime(BuildContext context) async {
    final timePicked =
        await showTimePicker(context: context, initialTime: _time);
    if (timePicked != null && timePicked != _time) {
      setState(() {
        _time = timePicked;
        _timeController.text = _time.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 9,
          child: GestureDetector(
            onTap: () {
              _selectTime(context);
            },
            child: AbsorbPointer(
              absorbing: true,
              child: TextField(
                  maxLines: 1,
                  controller: _timeController,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 17.0),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.notifications,
                        size: 17.0,
                      ),
                      fillColor: Color.fromRGBO(248, 248, 246, 1),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none)))),
            ),
          ),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          margin: EdgeInsets.only(left: 16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Color.fromRGBO(27, 209, 93, 0.07)),
          child: IconButton(
            icon: Icon(
              widget.add ? Icons.add : Icons.remove,
              color: Color.fromRGBO(27, 209, 93, 1),
            ),
            onPressed: () => widget.onTap(),
            splashRadius: 0.1,
          ),
        ),
      ],
    );
  }
}
