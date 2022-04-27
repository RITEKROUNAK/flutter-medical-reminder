import 'package:flutter/material.dart';
import 'package:flutter_medical_reminder/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AddMedication extends StatefulWidget {
  AddMedication({Key? key}) : super(key: key);

  @override
  _AddMedicationState createState() => _AddMedicationState();
}

class _AddMedicationState extends State<AddMedication> {
  List<Widget> _notifList = [];
  DateTime _date = new DateTime.now();
  DateFormat _dateFormat = DateFormat("dd/MM/yyyy");
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _notifList.add(MedicationNotificationTimeSelector(
      add: true,
      onTap: _addField,
    ));
    _dateController = TextEditingController(text: _dateFormat.format(_date));
  }

  _addField() {
    setState(() {
      _notifList.add(
          MedicationNotificationTimeSelector(add: false, onTap: _removeField));
    });
  }

  _removeField() {
    setState(() {
      _notifList.removeLast();
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final datePicked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2025));

    if (datePicked != null && datePicked != _date) {
      print("Date selected ${_date.toString()}");
      setState(() {
        _date = datePicked;
        _dateController.text = _dateFormat.format(_date);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 45.0, left: 28.0, right: 28.0),
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 248, 246, 1),
                  borderRadius: BorderRadius.all(Radius.circular(14.0))),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
                color: Color.fromRGBO(155, 155, 155, 1),
                iconSize: 24.0,
                splashRadius: 0.1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 15.0),
            child: Text(
              'Add Plan',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 28.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Medicine name',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
          ),
          TextField(
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 15.0),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.medication),
                fillColor: Color.fromRGBO(248, 248, 246, 1),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 15.0),
            child: Text(
              'Amount and till when?',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: MedicationDropDown(iconMap: {
                  'pills': Icons.tablet,
                  'gm': Icons.donut_small,
                  'ml': Icons.liquor
                }),
              ),
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: AbsorbPointer(
                    absorbing: true,
                    child: TextField(
                      maxLines: 1,
                      controller: _dateController,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.calendar_today,
                            size: 15.0,
                          ),
                          fillColor: Color.fromRGBO(248, 248, 246, 1),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(14.0),
                                  bottomLeft: Radius.circular(14.0)),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none))),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
            child: Text(
              'Add a note',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 15.0),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(26.0),
                hintText: 'Type here',
                hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 13.0),
                fillColor: Color.fromRGBO(248, 248, 246, 1),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 20.0),
            child: Text(
              'Notification',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
          ),
          ..._notifList,
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: ElevatedButton(
              child: Text(
                'Done',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    color: Colors.white),
              ),
              onPressed: () {},
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 60.0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14.0)))),
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(27, 209, 93, 1)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
