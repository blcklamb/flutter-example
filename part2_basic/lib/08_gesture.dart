import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main08() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('다양한 flutter의 입력 알아보기'),
      ),
      body: Body(),
    )),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TestCheckBox(),
      TestRadioButton(),
      TestSlider(),
      TestSwitch(),
      TestPopupMenu()
    ]);
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value ?? false)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value ?? false)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value ?? false))
      ],
    );
  }

  void changeValue(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestTestValue { test1, test2, test3 }

class _TestRadioButtonState extends State<TestRadioButton> {
  TestTestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: Radio<TestTestValue>(
          value: TestTestValue.test1,
          groupValue: selectValue,
          onChanged: (value) => setState(() => selectValue = value),
        ),
        title: Text(TestTestValue.test1.name),
        onTap: () => setState(() {
          selectValue = TestTestValue.test1;
        }),
      ),
      Radio<TestTestValue>(
        value: TestTestValue.test2,
        groupValue: selectValue,
        onChanged: (value) => setState(() => selectValue = value),
      ),
      Radio<TestTestValue>(
        value: TestTestValue.test3,
        groupValue: selectValue,
        onChanged: (value) => setState(() => selectValue = value),
      ),
    ]);
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${value.round()}'),
        Slider(
          value: value,
          onChanged: (newValue) {
            setState(() {
              value = newValue;
            });
          },
          divisions: 100,
          max: 100,
          min: 0,
          label: value.round().toString(),
          activeColor: Colors.red,
        ),
      ],
    );
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue)),
        CupertinoSwitch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue))
      ],
    );
  }
}

class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  TestTestValue selectValue = TestTestValue.test1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$selectValue'),
        PopupMenuButton(
          itemBuilder: (context) {
            return TestTestValue.values
                .map((value) =>
                    PopupMenuItem(value: value, child: Text(value.name)))
                .toList();
          },
          onSelected: (newValue) => setState(() => selectValue = newValue),
        ),
      ],
    );
  }
}
