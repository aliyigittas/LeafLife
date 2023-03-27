import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Late Blight"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/LateBlight.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Late blight is a disease that affects tomato plants and is caused by a fungus-like pathogen called Phytophthora infestans. It can cause the leaves, stems, and fruit of the plant to develop brown spots, rot, and eventually die."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or solve late blight, it is important to practice good plant hygiene, such as removing infected plant material, avoiding overhead watering, and rotating crops. Additionally, using fungicides can help prevent the spread of the disease. It is also helpful to choose tomato varieties that are resistant to late blight.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Late Blight',
                            style: TextStyle(fontSize: 20)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Early Blight"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/EarlyBlight.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description: ",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Early blight is fungal disease that affects tomato plants. It is caused by the fungus Alternaria solani and can cause circular lesions on the lower leaves of the plant, which can expand and cause defoliation."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or control early blight, it is important to practice good plant hygiene, such as removing infected plant material, avoiding overhead watering, and rotating crops. It can also be helpful to space plants out to promote air circulation and to mulch around the plants to reduce the spread of spores. Fungicides can also be used preventatively or as a curative treatment.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Early Blight',
                            style: TextStyle(fontSize: 20)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Septoria Leaf Spot"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/Septoria.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Septoria leaf spot is a fungal disease that affects tomato plants and is caused by the pathogen Septoria lycopersici. It can cause small, circular spots on the leaves, which can merge together and cause defoliation if left untreated."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage septoria leaf spot, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Crop rotation and planting resistant varieties can also be effective management strategies. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Septoria Leaf\n         Spot',
                            style: TextStyle(fontSize: 17)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Tomato Yellow Leaf Curl Virus",
                              style: TextStyle(fontSize: 17)),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/TomatoYellowLeaf.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Tomato Yellow Leaf Curl Virus (TYLCV) is a viral disease that affects tomato plants and is transmitted by whiteflies. Infected plants typically exhibit yellowing and curling of the leaves, stunted growth, and reduced fruit production."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage TYLCV, it is important to control whiteflies by using yellow sticky traps, insecticidal soaps, or insecticides labeled for whitefly control. Avoid planting tomatoes in areas where TYLCV has been a problem in the past, and remove and destroy infected plants as soon as they are noticed to prevent the spread of the virus.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Tomato Yellow\nLeaf Curl Virus',
                            style: TextStyle(fontSize: 16)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Bacterial Spot"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/BacterialSpot.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Bacterial spot is a disease that affects tomato plants and is caused by the bacterium Xanthomonas campestris pv. vesicatoria. It can cause circular, water-soaked lesions on the leaves, stems, and fruit of the plant, which can turn into dark, raised spots with yellow halos."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage bacterial spot, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Crop rotation and planting resistant tomato varieties can also be effective management strategies. Copper-based fungicides can be used as a preventative treatment, but they must be applied before the disease becomes established.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Bacterial\n    Spot',
                            style: TextStyle(fontSize: 20)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Target Spot"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/TargetSpot.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Target spot, also known as Corynespora leaf spot, is a fungal disease that affects tomato plants and is caused by the pathogen Corynespora cassiicola. It can cause circular to irregular-shaped lesions on the leaves, which can grow and merge together, eventually causing defoliation if left untreated."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage target spot, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Crop rotation can also be effective in reducing the risk of target spot. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Target Spot',
                            style: TextStyle(fontSize: 20)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Tomato Mosaic Virus"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/TomatoMosaic.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Tomato mosaic virus (ToMV) is a viral disease that affects tomato plants and is transmitted mechanically, through contact with infected plant sap or contaminated tools. Infected plants can exhibit mottled or streaked leaves, stunted growth, and reduced fruit production."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage ToMV, it is important to use clean tools and practice good plant hygiene to prevent mechanical transmission of the virus. Avoid planting tomatoes near tobacco, which can also harbor the virus. There are no effective chemical treatments for ToMV, so planting resistant tomato varieties is the most effective management strategy.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('     Tomato \nMosaic Virus',
                            style: TextStyle(fontSize: 18)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Leaf Mold"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/LeafMold.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Leaf mold is a fungal disease that affects tomato plants and is caused by the pathogen Fulvia fulva (formerly known as Cladosporium fulvum). It can cause yellowing of the leaves, which develop fuzzy, greyish-brown patches on the undersides. The affected leaves can eventually wither and drop off the plant."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage leaf mold, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Proper plant spacing and good air circulation can also help prevent leaf mold. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Leaf Mold', style: TextStyle(fontSize: 20)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Two Spotted Spider Mite"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/Spider.jpeg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Two-spotted spider mites are a common pest of tomato plants that can cause damage by piercing plant cells and sucking out the contents, which can lead to leaf yellowing, bronzing, and eventual defoliation if left untreated. They are often found on the undersides of leaves and are very small, making them difficult to spot with the naked eye."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage two-spotted spider mites, it is important to practice good plant hygiene and monitor plants regularly for signs of infestation. Avoid overhead watering and keep plants well hydrated to prevent water stress, which can make them more susceptible to spider mite damage. Natural enemies such as predatory mites and lacewings can be effective in controlling spider mite populations, as can applications of insecticidal soap or horticultural oils.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Two Spotted \n Spider Mite',
                            style: TextStyle(fontSize: 18)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 180,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: const Color.fromARGB(255, 221, 249, 221),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor:
                              const Color.fromARGB(255, 221, 249, 221),
                          title: const Text("Powdery Mildew"),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/Diseases/PowderyMildew.jpg',
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text("Description:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "Powdery mildew is a fungal disease that affects tomato plants and is caused by various species of the pathogen Erysiphe. It can cause a powdery, white or grey coating on the leaves, stems, and fruit of the plant, which can inhibit photosynthesis and reduce yields if left untreated."),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Solution:",
                                    style: TextStyle(fontSize: 20)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "To prevent or manage powdery mildew, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Proper plant spacing and good air circulation can also help prevent powdery mildew. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF5c9464),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Color(0xFF084864),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        const Text('Powdery \n Mildew',
                            style: TextStyle(fontSize: 20)),
                        Image.asset(
                          'assets/TransparentLeaf.png',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
