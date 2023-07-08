// ignore_for_file: file_names
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
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              diseaseBox(
                  context,
                  'Late Blight',
                  'assets/Diseases/LateBlight.jpeg',
                  "Late blight is a disease that affects tomato plants and is caused by a fungus-like pathogen called Phytophthora infestans. It can cause the leaves, stems, and fruit of the plant to develop brown spots, rot, and eventually die.",
                  "To prevent or solve late blight, it is important to practice good plant hygiene, such as removing infected plant material, avoiding overhead watering, and rotating crops. Additionally, using fungicides can help prevent the spread of the disease. It is also helpful to choose tomato varieties that are resistant to late blight."),
              diseaseBox(
                context,
                "Early Blight",
                'assets/Diseases/EarlyBlight.jpeg',
                "Early blight is fungal disease that affects tomato plants. It is caused by the fungus Alternaria solani and can cause circular lesions on the lower leaves of the plant, which can expand and cause defoliation.",
                "To prevent or control early blight, it is important to practice good plant hygiene, such as removing infected plant material, avoiding overhead watering, and rotating crops. It can also be helpful to space plants out to promote air circulation and to mulch around the plants to reduce the spread of spores. Fungicides can also be used preventatively or as a curative treatment.",
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              diseaseBox(
                context,
                "Septoria Leaf Spot",
                'assets/Diseases/Septoria.jpeg',
                "Septoria leaf spot is a fungal disease that affects tomato plants and is caused by the pathogen Septoria lycopersici. It can cause small, circular spots on the leaves, which can merge together and cause defoliation if left untreated.",
                "To prevent or manage septoria leaf spot, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Crop rotation and planting resistant varieties can also be effective management strategies. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
              ),
              diseaseBox(
                context,
                "Tomato Yellow Leaf Curl Virus",
                'assets/Diseases/TomatoYellowLeaf.jpeg',
                "Tomato Yellow Leaf Curl Virus (TYLCV) is a viral disease that affects tomato plants and is transmitted by whiteflies. Infected plants typically exhibit yellowing and curling of the leaves, stunted growth, and reduced fruit production.",
                "To prevent or manage TYLCV, it is important to control whiteflies by using yellow sticky traps, insecticidal soaps, or insecticides labeled for whitefly control. Avoid planting tomatoes in areas where TYLCV has been a problem in the past, and remove and destroy infected plants as soon as they are noticed to prevent the spread of the virus.",
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              diseaseBox(
                context,
                "Bacterial Spot",
                'assets/Diseases/BacterialSpot.jpeg',
                "Bacterial spot is a disease that affects tomato plants and is caused by the bacterium Xanthomonas campestris pv. vesicatoria. It can cause circular, water-soaked lesions on the leaves, stems, and fruit of the plant, which can turn into dark, raised spots with yellow halos.",
                "To prevent or manage bacterial spot, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Crop rotation and planting resistant tomato varieties can also be effective management strategies. Copper-based fungicides can be used as a preventative treatment, but they must be applied before the disease becomes established.",
              ),
              diseaseBox(
                context,
                "Target Spot",
                'assets/Diseases/TargetSpot.jpeg',
                "Target spot, also known as Corynespora leaf spot, is a fungal disease that affects tomato plants and is caused by the pathogen Corynespora cassiicola. It can cause circular to irregular-shaped lesions on the leaves, which can grow and merge together, eventually causing defoliation if left untreated.",
                "To prevent or manage target spot, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Crop rotation can also be effective in reducing the risk of target spot. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              diseaseBox(
                context,
                "Tomato Mosaic Virus",
                'assets/Diseases/TomatoMosaic.jpeg',
                "Tomato mosaic virus (ToMV) is a viral disease that affects tomato plants and is transmitted mechanically, through contact with infected plant sap or contaminated tools. Infected plants can exhibit mottled or streaked leaves, stunted growth, and reduced fruit production.",
                "To prevent or manage ToMV, it is important to use clean tools and practice good plant hygiene to prevent mechanical transmission of the virus. Avoid planting tomatoes near tobacco, which can also harbor the virus. There are no effective chemical treatments for ToMV, so planting resistant tomato varieties is the most effective management strategy.",
              ),
              diseaseBox(
                context,
                "Leaf Mold",
                'assets/Diseases/LeafMold.jpeg',
                "Leaf mold is a fungal disease that affects tomato plants and is caused by the pathogen Fulvia fulva (formerly known as Cladosporium fulvum). It can cause yellowing of the leaves, which develop fuzzy, greyish-brown patches on the undersides. The affected leaves can eventually wither and drop off the plant.",
                "To prevent or manage leaf mold, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Proper plant spacing and good air circulation can also help prevent leaf mold. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              diseaseBox(
                context,
                "Two Spotted Spider Mite",
                'assets/Diseases/Spider.jpeg',
                "Two-spotted spider mites are a common pest of tomato plants that can cause damage by piercing plant cells and sucking out the contents, which can lead to leaf yellowing, bronzing, and eventual defoliation if left untreated. They are often found on the undersides of leaves and are very small, making them difficult to spot with the naked eye.",
                "To prevent or manage two-spotted spider mites, it is important to practice good plant hygiene and monitor plants regularly for signs of infestation. Avoid overhead watering and keep plants well hydrated to prevent water stress, which can make them more susceptible to spider mite damage. Natural enemies such as predatory mites and lacewings can be effective in controlling spider mite populations, as can applications of insecticidal soap or horticultural oils.",
              ),
              diseaseBox(
                context,
                "Powdery Mildew",
                'assets/Diseases/PowderyMildew.jpg',
                "Powdery mildew is a fungal disease that affects tomato plants and is caused by various species of the pathogen Erysiphe. It can cause a powdery, white or grey coating on the leaves, stems, and fruit of the plant, which can inhibit photosynthesis and reduce yields if left untreated.",
                "To prevent or manage powdery mildew, it is important to practice good plant hygiene, such as removing infected plant material and avoiding overhead watering. Proper plant spacing and good air circulation can also help prevent powdery mildew. Fungicides can be used preventatively or as a curative treatment, but it is important to rotate fungicides to prevent the development of resistance.",
              )
            ],
          ),
        ],
      ),
    );
  }

  SizedBox diseaseBox(BuildContext context, String diseaseName,
      String diseaseImage, String diseaseDescription, String diseaseSolution) {
    return SizedBox(
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
            showInfo(
              context,
              diseaseName,
              diseaseImage,
              diseaseDescription,
              diseaseSolution,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                //fit image to container
                Flexible(
                  child: Text(
                    diseaseName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: const TextStyle(fontSize: 15.5),
                  ),
                ),
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
    );
  }

  Future<dynamic> showInfo(BuildContext context, String diseaseName,
      String diseaseImage, String diseaseDescription, String diseaseSolution) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color.fromARGB(255, 221, 249, 221),
        title: Text(diseaseName),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                diseaseImage,
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 15),
              const Text("Description:", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text(diseaseDescription),
              const SizedBox(height: 10),
              const Text("Solution:", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text(diseaseSolution),
            ],
          ),
        ),
        actions: [
          TextButton(
            style:
                TextButton.styleFrom(foregroundColor: const Color(0xFF5c9464)),
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
  }
}
