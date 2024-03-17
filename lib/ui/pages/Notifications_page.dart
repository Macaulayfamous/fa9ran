import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool soundNotificationsSwitch = false;
  bool outNotificationsSwitch = false;
  bool insideNotificationsSwitch = false;

  Widget header() {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 60, left: 27.75),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/arrow_left.png',
                height: 24,
                width: 24,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            const Text(
              'Notifications',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      margin: const EdgeInsets.only(top: 35),
      child: Container(
        height: 145,
        width: 350,
        decoration: BoxDecoration(
          color: const Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.5,
              blurRadius: 2.5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              buildSwitchRow(
                title: 'Sound',
                value: soundNotificationsSwitch,
                onChanged: (value) {
                  setState(() {
                    soundNotificationsSwitch = value;
                  });
                },
              ),
              buildSwitchRow(
                title: 'Out Notifications',
                value: outNotificationsSwitch,
                onChanged: (value) {
                  setState(() {
                    outNotificationsSwitch = value;
                  });
                },
              ),
              buildSwitchRow(
                title: 'Inside Notifications',
                value: insideNotificationsSwitch,
                onChanged: (value) {
                  setState(() {
                    insideNotificationsSwitch = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSwitchRow({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Switch(
          value: value,
          activeColor: const Color(0xffE41937),
          onChanged: onChanged,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
