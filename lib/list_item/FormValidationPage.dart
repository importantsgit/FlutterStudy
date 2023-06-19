import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormValidationPage extends StatefulWidget {
  const FormValidationPage({super.key});

  @override
  State<FormValidationPage> createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  final _formKey = GlobalKey<FormState>(); // unique한 값 -> form의 상태를 알수 있게
  late FocusNode nameFocusNode; // 다 사용하면 해제해야 함

  final nameController = TextEditingController(); // 이걸 통해서 값을 가져올 수 있다.
  String str = '';

  @override
  void initState() {
    super.initState();
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    nameFocusNode.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black12,
                  )),
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter(
                    RegExp('[a-z A-z ㄱ-ㅎ |가-힣| :]'),
                    allow: true,
                  )
                ],
                onChanged: (text) {
                  str = text;
                },
                validator: (value) {
                  // 규칙 정하기
                  if (value!.isEmpty) {
                    return '공백은 허용되지 않습니다.';
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // valid할 때
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(str)));
                    }
                  },
                  child: const Text('전송'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameController,
                  onChanged: (text) => print(text),
                  focusNode: nameFocusNode,
                  // validate 기능 없음
                  autofocus: true, // 먼저 잡히도록
                  decoration: const InputDecoration(
                      hintText: 'PlaceHolder',
                      border: InputBorder.none,
                      labelText: '이름'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(nameFocusNode);
                },
                child: const Text('포커스'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(nameController.text),
                        );
                      });
                },
                child: const Text('TextField 값 확인'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
