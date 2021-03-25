part of anmolsethi;

InputDecoration inputDecoration(String hintText) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
    hintText: hintText,
    hintStyle: TextStyle(color: textColorThird),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: viewColor, width: 0.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: viewColor, width: 0.0),
    ),
  );
}

changeStatusColor(Color color) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(
        useWhiteForeground(color));
  } on Exception catch (e) {
    print(e);
  }
}

Future<bool> showMessage(String message,
    {bool error = false, bool basic = false}) {
  return Fluttertoast.showToast(
    msg: message,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
    gravity: basic ? ToastGravity.BOTTOM : ToastGravity.CENTER,
    backgroundColor: error
        ? Colors.redAccent
        : basic
            ? Colors.black87
            : Colors.green,
  );
}

BoxDecoration boxDecoration(
    {double radius = 2,
    Color color = Colors.transparent,
    Color bgColor = Colors.white,
    var showShadow = false}) {
  return BoxDecoration(
    color: bgColor,
    boxShadow: showShadow
        ? [BoxShadow(color: shadowColor, blurRadius: 10, spreadRadius: 2)]
        : [BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}

Widget divider() {
  return Divider(
    height: 0.5,
    color: viewColor,
  );
}
