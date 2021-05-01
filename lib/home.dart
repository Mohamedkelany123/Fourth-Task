import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Email/contacts.dart';
import 'Email/mail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navBarIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyWidgets = [
      Center(
        child: ListView.builder(
            itemCount: Contacts.numbers.length,
            itemBuilder: (context, i) => ContactsContainer(
              index: i,
            )),
      ),
      Center(
        child: ListView.builder(
            itemCount: Mail.emails.length,
            itemBuilder: (context, i) => MailContainer(
                  index: i,
                )),
      ),
      Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Icon(
                  Icons.person,
                  size: 180,
                ),
                decoration: BoxDecoration(
                   border: Border(
                     bottom: BorderSide(
                       color: Colors.black,
                       width: 5,
                     ),
                   ),
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.person_pin_circle,
                            color: Colors.black,
                            size: 40,
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Muhammad ahmed kelany zahran',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 40,
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '01085837566',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.mail,
                            color: Colors.black,
                            size: 40,
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'mohamedkelany479@@gmail.com',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.black,
                            size: 40,
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '6-October city, villa:550',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Gmail',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
        ),
        body: bodyWidgets[navBarIndex],
        backgroundColor: Colors.grey,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navBarIndex,
          iconSize: 30,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contacts,
              ),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
              ),
              label: 'Mail',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              navBarIndex = index;
            });
          },
        ),
        drawer: Drawer(
          child: Center(
            child: Text(
              'CHECK YOUR EMAIL',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}



class MailContainer extends StatelessWidget {
  final int index;

  MailContainer({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
             backgroundColor: Colors.black,
              child: Icon(Icons.email),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Mail.names[index],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                Text(

                  Mail.emails[index],
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





class ContactsContainer extends StatelessWidget {
  final int index;

  ContactsContainer({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(12.0),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                Contacts.photo[index],
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Contacts.names[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                    ),
                    Text(
                      Contacts.email[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      child: Text(
                        Contacts.numbers[index],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 95,)),
                    Container(
                      child:Icon(
                         Icons.delete,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}





class ProfileInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: double.infinity,
        child: Icon(
          Icons.person,
          size: 80,
        ),
      ),
    );
  }
}


