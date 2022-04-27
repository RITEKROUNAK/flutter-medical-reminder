import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicationDropDown extends StatefulWidget {
  final Map<String, IconData> iconMap;

  MedicationDropDown({Key? key, required this.iconMap}) : super(key: key);

  @override
  _MedicationDropDownState createState() => _MedicationDropDownState();
}

class _MedicationDropDownState extends State<MedicationDropDown> {
  List<String> _amountTypes = [];
  late String _currentSelectedAmountType;

  @override
  void initState() {
    super.initState();
    _amountTypes = widget.iconMap.keys.toList();
    _currentSelectedAmountType = _amountTypes[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(248, 248, 246, 1),
          borderRadius: BorderRadius.circular(14.0)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              maxLines: 1,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    widget.iconMap[_currentSelectedAmountType],
                    size: 15.0,
                  ),
                  fillColor: Color.fromRGBO(248, 248, 246, 1),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14.0),
                          bottomLeft: Radius.circular(14.0)),
                      borderSide:
                          BorderSide(width: 0, style: BorderStyle.none))),
            ),
          ),
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return _amountTypes.map((str) {
                return PopupMenuItem(
                  value: str,
                  child: Text(str),
                );
              }).toList();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    _currentSelectedAmountType,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 15.0),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            onSelected: (v) {
              setState(() {
                print('!!!===== $v');
                _currentSelectedAmountType = v;
              });
            },
          )
        ],
      ),
    );
  }
}
