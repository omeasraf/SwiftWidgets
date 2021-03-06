# SwiftWidgets
## _Flutter like widgets for SwiftUI_

[![SwiftUI](https://developer.apple.com/assets/elements/icons/swiftui/swiftui-128x128_2x.png)](https://developer.apple.com/tutorials/swiftui)


SwiftWidgets is an easy to use swift package that serves a variety of flutter like widgets for SwiftUI to make coding easier

- Documentation with example codes
- Custom views
- ✨Magic ✨

## Supported Views


| View | Description |
| ------ | ------ |
| Icon | A graphical icon view drawn with a systemName using the SF Symbols |
| Card | A rectangular shape with slightly rounded corners and an elevation shadow |
| TextCard | Custom texts inside of a Card |
| ImageCard | An image inside a card with bottom text |
| ImageCarousel | Scrollable poster view |


## Examples


| View | Image |
| ------ | ------ |
| Icon | <img src="Images/iconsExample.png" height="200"> |
| Card | <img src="Images/card.png" height="200"> |
| TextCard | <img src="Images/TextCard.png" height="200"> |
| ImageCard | <img src="Images/ImageCard.png" height="200" width="220"> |
| ImageCarousel | <img src="Images/ImageCarousel.png" height="200"> |



## Sample Code

Card
```swift
 Card(child: AnyView(Text("Hello World").foregroundColor(.white).padding(20)),
     borderRadius: 10,
     backgroundColor: Color.red,
     shadowColor: Color.red.opacity(0.5),
     shadowRadius: 5,offsetY: 10)
```

Icon

 ```swift
 VStack{
    Icon(SFIcons.applelogo,
         size: 25,
         color: Color.red,
         semanticLabel: "Apple Logo")
    Icon(SFIcons.airplane,
         size: 35,
         color: Color.green)
    Icon(SFIcons.carFill,
         size: 45,
         color: Color.blue)
 }
 ```
TextCard

 ```swift
 TextCard(title: Text("Welcome to Widgets")
            .foregroundColor(.white),
     description: Text("Widgets are super fun")
            .foregroundColor(Color.white.opacity(0.5)),
     borderRadius: 10,
     backgroundColor: Color.red,
     shadowColor: Color.red.opacity(0.5),
     shadowRadius: 5,offsetY: 10
 )
 ```
 ImageCard

  ```swift
  ImageCard(
      title: Text("Taylor Swift")
          .foregroundColor(.white),
      description: Text("Singer, Songwriter")
          .foregroundColor(.white),
      imageURL: "https://pbs.twimg.com/media/EygPE2jW8AMtsex.jpg",
      backgroundColor: Color.gray.opacity(0.6),
      shadowColor: Color.yellow.opacity(0.5),
      offsetX: 5.0
  )
  .frame(height: 400)
  ```
 ImageCarousel

  ```swift
ImageCarousel(images: CarouselModel.example, width: 130){ image in
    AnyView(Text(image.name)) // destination view
}
  ```




## Installation

Only with Swift Package Manager, via Xcode or directly:

##### Package dependency:
```swift
.package(name: "SwiftWidgets",
         url: "https://github.com/omeasraf/SwiftWidgets.git",
         from: "1.0.0")
```
```dsconfig
Install using Xcode
- Open "Xcode"
- Click on "File"
- Click on "Swift Packages"
- Click on "Add Package Dependency"
- Paste this url "https://github.com/omeasraf/SwiftWidgets"
- Follow the onscreen prompts
```

##### Import
```swift
import SwiftWidgets
```

## Contributions

Welcome: open an issue / [@omeasraf](https://twitter.com/omeasraf)

## License
Distributed under the MIT license.
