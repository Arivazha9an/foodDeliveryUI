import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:food_delivery/constants.dart';
import 'package:food_delivery/widgets/customappbar.dart';
import 'package:food_delivery/widgets/custombutton.dart';
import 'package:food_delivery/widgets/customtextfeild.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final TextEditingController _datepickController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Edit profile',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              CustomTextFormField(
                controller: _nameController,
                hintText: '',
                keyboardType: TextInputType.name,
                width: 330,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                controller: _phoneController,
                hintText: '',
                keyboardType: TextInputType.phone,
                width: 330,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                controller: _emailController,
                hintText: '',
                keyboardType: TextInputType.emailAddress,
                width: 330,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(-4, 4),
                      blurRadius: 18,
                      spreadRadius: 0,
                      color: Color(0x17000000),
                    )
                  ],
                ),
                child: TextFormField(
                  controller: _datepickController,
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: lightgrey,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightgrey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: lightgrey)),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    hintText: 'Choose Date',
                    prefixIcon: GestureDetector(
                      onTap: _selectDate,
                      child: const Icon(Icons.calendar_month),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 330,
                child: DropDownTextField(
                    textFieldDecoration: InputDecoration(
                      filled: true,
                      fillColor: lightgrey,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: lightgrey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: lightgrey)),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    dropDownList: const [
                      DropDownValueModel(name: 'Male', value: "Male"),
                      DropDownValueModel(name: 'Female', value: "Female"),
                      DropDownValueModel(name: 'Others', value: "Others"),
                    ]),
              ),
              const SizedBox(
                height: 140,
              ),
              CustomTextButton(
                  title: 'save',
                  background: red,
                  textColor: white,
                  fontSize: 18,
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2099));
    if (picked != null) {
      setState(() {
        _datepickController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }
}
