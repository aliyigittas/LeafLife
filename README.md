# LeafLife
![0c2133cb2c6043a2b34b59af85c39185_1](https://user-images.githubusercontent.com/48025526/228330193-f6fe2f7f-d58c-4c59-9902-68bd79a69223.png)
<img width="709" alt="Ekran Resmi 2023-03-28 21 15 24" src="https://user-images.githubusercontent.com/48025526/228330776-b683d3f9-db18-46f8-bdc7-d59fa91b1564.png">

LeafLife is a mobile application that identifies plant diseases by using machine learning algorithms to analyze photos taken on the user's phone.

## Used Google Technologies
### Flutter
  - Mobile application
### Firebase
  - Authentication
  - FireStore
  - Storage
### Tensorflow
  - Training the model
### Kaggle
  - Obtaining dataset
  
### LeafLife
Farmers usually check the leaves of their crops to identify diseases early and prevent them from spreading. However, disease identification can be a challenge for farmers sometimes. To address this challenge, we have developed a mobile application called LeafLife. By using LeafLife, we aim to contribute to two of the United Nations' Sustainable Development Goals which are Responsible Consumption and Production, and Life on Land.

We have three main pages on our application. The Home page is designed to display all of a farmer's previous scan results in one place, as we believe this is important information for them to have. The Explore page provides information on all the diseases that our application can detect, including possible solutions to those diseases. The Profile page displays the user's profile information.
To scan a new plant, users can click on the button located in the bottom right corner of every page. This scan page allows them to choose between selecting an image from their phone's gallery or taking a photo to use for the scan. The scan results are automatically added to the Home page once the scan is completed.

# How to run?

## Android
For android, use the .apk file provided in releases section.

## iOS
For iOS, open ios/Runner.xcodeproj
Connect your physical iOS device, click "Runner" in the left top corner, then click Signing & Capabilities and add your provisioning profile. 
Then enter this command `flutter run` in project directory.

## Contributors
- Ali Taş
- Mehmet Kuzucu
- Şafak Gün

## License
LeafLife is distributed under the [Insert License Type] license. See LICENSE for more information.
