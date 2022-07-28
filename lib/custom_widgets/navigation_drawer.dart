import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:pa_market_farmer/custom_objects/farmer.dart';
import 'package:pa_market_farmer/logic/farmer_details.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final Farmer farmer = FarmerDetails.getFarmerDetails();
    String string = '';
    String monday, tuesday, wednesday, thursday, friday, saturday, sunday, holiday = '';
    String youtube, linkedIn, instagram, tiktok, facebook, website, phone = '';
    String stock, productName, productDescription, cost = '';
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(color: primaryNavDrawerColor),
              child: InkWell(
            child: CircleAvatar(
              backgroundImage: NetworkImage(farmer.url),
              radius: MediaQuery.of(context).size.width/10,
            ),
            onTap: () {
              //todo: replace the image, use image picker
            },
          ),),
          // First Name and Middle name
          ListTile(
            title: const Text('First name Middle name', style: TextStyle(color: primaryTextBackgroundColor),),
            subtitle: Text(farmer.firstName, style:const TextStyle(color: primaryTextBackgroundColor),),
            trailing: IconButton(
                onPressed: () {
                  //edit the relevant details through a dialog box
                  showDialog(
                      context: context,
                      builder: (context)=> AlertDialog(
                        title: const Text('Change First name and Middle name'),
                        content: Form(
                          key: _formKey,
                            child: Column(
                              children: [
                                //the required field
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty name, please enter your first name and middle name if you have one. Thank you';
                                    }
                                  },
                                  onChanged: (value) {
                                    string = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: farmer.firstName,
                                  ),
                                ),
                                // the submit or cancel button
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: const Text('Cancel')
                                    )),
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          if (_formKey.currentState!.validate()) {
                                            //make necessary changes
                                            FarmerDetails.changeFirstAndLastName(string, farmer.lastName);

                                          }
                                          Navigator.pop(context, 'Ok');
                                        },
                                        child: const Text('Submit')
                                    )),
                                  ],
                                )
                              ],
                            )
                        ),
                      )
                  );
                },
                icon: const Icon(Icons.edit)
            ),
          ),
          //Last name
          ListTile(
            title: const Text('Last name', style: TextStyle(color: primaryTextBackgroundColor),),
            subtitle: Text(farmer.lastName, style:const TextStyle(color: primaryTextBackgroundColor),),
            trailing: IconButton(
                onPressed: () {
                  //edit the relevant details through a dialog box
                  showDialog(
                      context: context,
                      builder: (context)=> AlertDialog(
                        title: const Text('Change First name and Middle name'),
                        content: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                //the required field
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty name, please enter your last name. Thank you';
                                    }
                                  },
                                  onChanged: (value) {
                                    string = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: farmer.lastName,
                                  ),
                                ),
                                // the submit or cancel button
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: const Text('Cancel')
                                    )),
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          if (_formKey.currentState!.validate()) {
                                            //make necessary changes
                                            FarmerDetails.changeFirstAndLastName(farmer.firstName,string);
                                            Navigator.pop(context, 'Ok');
                                          }
                                        },
                                        child: const Text('Submit')
                                    )),
                                  ],
                                )
                              ],
                            )
                        ),
                      )
                  );
                },
                icon: const Icon(Icons.edit)
            ),
          ),
          //Farm address
          ListTile(
            title: const Text('Farm address', style: TextStyle(color: primaryTextBackgroundColor),),
            subtitle: Text(farmer.address, style:const TextStyle(color: primaryTextBackgroundColor),),
            trailing: IconButton(
                onPressed: () {
                  //edit the relevant details through a dialog box
                  showDialog(
                      context: context,
                      builder: (context)=> AlertDialog(
                        title: const Text('Change Farm address'),
                        content: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                //the required field
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty name, please enter your farm address. Thank you';
                                    }
                                  },
                                  onChanged: (value) {
                                    string = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: farmer.address,
                                  ),
                                ),
                                // the submit or cancel button
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: const Text('Cancel')
                                    )),
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          if (_formKey.currentState!.validate()) {
                                            //todo: make necessary changes
                                            // FarmerDetails.changeFirstAndLastName(farmer.firstName,string);
                                            Navigator.pop(context, 'Ok');
                                          }
                                        },
                                        child: const Text('Submit')
                                    )),
                                  ],
                                )
                              ],
                            )
                        ),
                      )
                  );
                },
                icon: const Icon(Icons.edit)
            ),
          ),
          //Farm description
          ListTile(
            title: const Text('Farm description', style: TextStyle(color: primaryTextBackgroundColor),),
            subtitle: Text(farmer.description, style:const TextStyle(color: primaryTextBackgroundColor),),
            trailing: IconButton(
                onPressed: () {
                  //edit the relevant details through a dialog box
                  showDialog(
                      context: context,
                      builder: (context)=> AlertDialog(
                        title: const Text('Change farm description'),
                        content: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                //the required field
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty farm description, please provide a farm description. Thank you';
                                    }
                                  },
                                  onChanged: (value) {
                                    string = value;
                                  },
                                  maxLines: 25,
                                  decoration: InputDecoration(
                                    hintText: farmer.description,
                                  ),
                                ),
                                // the submit or cancel button
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: const Text('Cancel')
                                    )),
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          if (_formKey.currentState!.validate()) {
                                            //todo: make necessary changes
                                            // FarmerDetails.changeFirstAndLastName(farmer.firstName,string);
                                            Navigator.pop(context, 'Ok');
                                          }
                                        },
                                        child: const Text('Submit')
                                    )),
                                  ],
                                )
                              ],
                            )
                        ),
                      )
                  );
                },
                icon: const Icon(Icons.edit)
            ),
          ),
          //Farm hours
          ListTile(
            title: const Text('Farm hours', style: TextStyle(color: primaryTextBackgroundColor),),
            subtitle: Text('Monday: ${farmer.hours[0]}.....', style:const TextStyle(color: primaryTextBackgroundColor),),
            trailing: IconButton(
                onPressed: () {
                  //edit the relevant details through a dialog box
                  showDialog(
                      context: context,
                      builder: (context)=> AlertDialog(
                        title: const Text('Change farm hours'),
                        content: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                //Monday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    monday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Monday: ${farmer.hours[0]}',
                                  ),
                                ),
                                //Tuesday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    tuesday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Tuesday: ${farmer.hours[1]}',
                                  ),
                                ),
                                //Wednesday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    wednesday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Wednesday: ${farmer.hours[2]}',
                                  ),
                                ),
                                //Thursday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    thursday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Thursday: ${farmer.hours[3]}',
                                  ),
                                ),
                                //Friday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    friday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Friday: ${farmer.hours[4]}',
                                  ),
                                ),
                                //Saturday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    saturday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Saturday: ${farmer.hours[5]}',
                                  ),
                                ),
                                //Sunday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    sunday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Sunday: ${farmer.hours[6]}',
                                  ),
                                ),
                                // Holiday hours
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    holiday = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Holiday hours: ${farmer.hours[7]}',
                                  ),
                                ),

                                // the submit or cancel button
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: const Text('Cancel')
                                    )),
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          if (_formKey.currentState!.validate()) {
                                            //todo: make necessary changes
                                            // FarmerDetails.changeFirstAndLastName(farmer.firstName,string);
                                            Navigator.pop(context, 'Ok');
                                          }
                                        },
                                        child: const Text('Submit')
                                    )),
                                  ],
                                )
                              ],
                            )
                        ),
                      )
                  );
                },
                icon: const Icon(Icons.edit)
            ),
          ),
          //Farm social networks and phone number
          //0: Youtube, 1: Instagram 2: Tiktok 3: Facebook 4: LinkedIn 5: website 6: phone
          ListTile(
            title: const Text('Farm socials', style: TextStyle(color: primaryTextBackgroundColor),),
            subtitle: Text('Youtube: ${farmer.socials[0]}.....', style:const TextStyle(color: primaryTextBackgroundColor),),
            trailing: IconButton(
                onPressed: () {
                  //edit the relevant details through a dialog box
                  showDialog(
                      context: context,
                      builder: (context)=> AlertDialog(
                        title: const Text('Change farm hours'),
                        content: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                //Monday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    youtube = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Youtube: ${farmer.socials[0]}',
                                  ),
                                ),
                                //Tuesday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    instagram = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Instagram: ${farmer.socials[1]}',
                                  ),
                                ),
                                //Wednesday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    tiktok = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Tiktok: ${farmer.socials[2]}',
                                  ),
                                ),
                                //Thursday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    facebook = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Facebook: ${farmer.socials[3]}',
                                  ),
                                ),
                                //Friday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    linkedIn = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'LinkedIn: ${farmer.socials[4]}',
                                  ),
                                ),
                                //Saturday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    website = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'website: ${farmer.socials[5]}',
                                  ),
                                ),
                                //Sunday
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Cannot add an empty date, please add relevant hours. Thank you';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    phone = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'phoneNumber: ${farmer.socials[6]}',
                                  ),
                                ),

                                // the submit or cancel button
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          Navigator.pop(context, 'Cancel');
                                        },
                                        child: const Text('Cancel')
                                    )),
                                    Expanded(child: TextButton(
                                        onPressed: () {
                                          //operation cancelled
                                          if (_formKey.currentState!.validate()) {
                                            //todo: make necessary changes
                                            // FarmerDetails.changeFirstAndLastName(farmer.firstName,string);
                                            Navigator.pop(context, 'Ok');
                                          }
                                        },
                                        child: const Text('Submit')
                                    )),
                                  ],
                                )
                              ],
                            )
                        ),
                      )
                  );
                },
                icon: const Icon(Icons.edit)
            ),
          ),
          //Feedback from users and adding new stock
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: ElevatedButton(
                    onPressed: () {
                      //open dialog box
                      showDialog(context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('User Feedback'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  child: const Text('Cancel')
                              )
                            ],
                          )
                      );
                    },
                    child: const Text('User Feedback')
                )),]),
               Row(mainAxisAlignment: MainAxisAlignment.center,children: [ Expanded(child: ElevatedButton(
                   onPressed: () {
                     //open dialog box
                     showDialog(context: context,
                         builder: (context) => AlertDialog(
                           title: const Text('Add product'),
                           content:  Form(
                               key: _formKey,
                               child: Column(
                                 //name description network cost stock
                                 children: [
                                   //Add product name
                                   TextFormField(
                                     validator: (value) {
                                       if (value == null || value.isEmpty) {
                                         return 'Cannot add an empty field. Thank you';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       productName = value;
                                     },
                                     decoration: const InputDecoration(
                                       hintText: 'Product Name',
                                     ),
                                   ),
                                   //Add product description
                                   TextFormField(
                                     validator: (value) {
                                       if (value == null || value.isEmpty) {
                                         return 'Cannot add an empty field. Thank you';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       productDescription = value;
                                     },
                                     decoration: const InputDecoration(
                                       hintText: 'Product description',
                                     ),
                                   ),
                                   //Add cost
                                   TextFormField(
                                     validator: (value) {
                                       if (value == null || value.isEmpty) {
                                         return 'Cannot add an empty field. Thank you';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       cost = value;
                                     },
                                     decoration: const InputDecoration(
                                       hintText: 'Product cost',
                                     ),
                                   ),
                                   //Add stock
                                   TextFormField(
                                     validator: (value) {
                                       if (value == null || value.isEmpty) {
                                         return 'Cannot add an empty date, please add relevant hours. Thank you';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       stock = value;
                                     },
                                     decoration: const InputDecoration(
                                       hintText: 'How much do you have in stock',
                                     ),
                                   ),
                                   // the submit or cancel button
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Expanded(child: TextButton(
                                           onPressed: () {
                                             //operation cancelled
                                             Navigator.pop(context, 'Cancel');
                                           },
                                           child: const Text('Cancel')
                                       )),
                                       Expanded(child: TextButton(
                                           onPressed: () {
                                             //operation cancelled
                                             if (_formKey.currentState!.validate()) {
                                               //todo: make necessary changes
                                               // FarmerDetails.changeFirstAndLastName(farmer.firstName,string);
                                               Navigator.pop(context, 'Ok');
                                             }
                                           },
                                           child: const Text('Submit')
                                       )),
                                     ],
                                   )
                                 ],
                               )
                           ),
                           actions: [
                             TextButton(
                                 onPressed: () {
                                   Navigator.pop(context, 'Ok');
                                 },
                                 child: const Text('Ok')
                             )
                           ],
                         )
                     );
                   },
                   child: const Text('Add product')
               ))],),
              ],
            ),
          )
        ],
      )
    );
  }
}
