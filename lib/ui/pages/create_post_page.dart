import 'package:austtaptvl/const/colors.dart';
import 'package:austtaptvl/const/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CreatePost extends StatefulWidget {
  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final dropitems = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String? value;
  var categories;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Create Post',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff0FA958),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Divider(
                color: AppColors.defaultcolor,
                thickness: 2,
              ),
              SizedBox(
                height: screenHeigth * 0.015,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create your post",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.017,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff00602B),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.017,
                      color: Color(0xff00602B),
                    ),
                  ),
                ],
              ),
              // DropdownButton<String>(
              //   value: value,
              //   isExpanded: true,
              //   items: dropitems(buidMenuItem).toList(),
              //   onChanged: (value) => setState(() => this.value = value),
              // ),
              Row(
                children: [
                  DropdownButton<String>(
                    // isExpanded: true,
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    hint: Text("chose a valid category"),
                    onChanged: (val) {
                      setState(() {
                        this.categories = val;
                      });
                      print(val);
                    },
                    value: this.categories,
                    items: [
                      DropdownMenuItem(
                        value: 'Help post',
                        child: Text("Help post"),
                      ),
                      DropdownMenuItem(
                        value: 'job post',
                        child: Text("job post"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your post",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.017,
                      color: Color(0xff00602B),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                width: screenWidth - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffC4C4C4), width: 2),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 30,
                ),
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tags",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.017,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),
              Container(
                height: 60,
                width: screenWidth - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffC4C4C4), width: 2),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 30,
                ),
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),
              ToggleSwitch(
                cornerRadius: 20,
                minWidth: screenWidth * 0.400,
                minHeight: screenHeigth * 0.090,
                fontSize: screenHeigth * 0.018,
                initialLabelIndex: 1,
                activeBgColor: [
                  Color(
                    0xff00602B,
                  )
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Color(0xff0FA958),
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                labels: ['Draft', 'Share'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String>? buidMenuItem(String item) {
    DropdownMenuItem(value: item, child: Text(item));
  }
}
