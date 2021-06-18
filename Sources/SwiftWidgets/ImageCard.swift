//
//  ContentView.swift
//  TestSwiftWidgets
//
//  Created by Ome Asraf on 6/18/21.
//

import SwiftUI


/// A card: A panel of texts with slightly rounded corners and an
/// elevation shadow.
///
/// This example shows how to create an [ImageCard] with different colors and
/// styling.
///
/// ```swift
/// TextCard(title: Text("Welcome to Widgets")
///            .foregroundColor(.white),
///     description: Text("Widgets are super fun")
///            .foregroundColor(Color.white.opacity(0.5)),
///     borderRadius: 10,
///     backgroundColor: Color.red,
///     shadowColor: Color.red.opacity(0.5),
///     shadowRadius: 5,offsetY: 10
/// )
/// ```
///
///  - Author: Ome Asraf
///  - Version: 1.0.0
///  - Image: <https://raw.githubusercontent.com/omeasraf/SwiftWidgets/main/Images/TextCard.png>
///
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public struct ImageCard: View {
    
    var title:Text
    var description:Text
    var imageURL: String
    var image: Image
    var placeholder: AnyView
    var cornerRadius:CGFloat
    var shadowRadius: CGFloat
    var backgroundColor: Color
    var shadowColor: Color
    var shadowOffsetX: CGFloat
    var shadowOffsetY: CGFloat
    
    
    
    public init(
        title:Text,
        description:Text = Text(""),
        imageURL: String = "",
        image:Image = Image(systemName: "applelogo"),
        placeholder:AnyView = AnyView(Text("Loading...")),
        borderRadius:CGFloat = 2,
        backgroundColor:Color = Color.white,
        shadowColor: Color = Color.white,
        shadowRadius: CGFloat = 5,
        offsetX:CGFloat = 0,
        offsetY:CGFloat = 5
    ){
        self.title = title
        self.description = description
        self.backgroundColor = backgroundColor
        self.cornerRadius = borderRadius
        self.shadowRadius = shadowRadius
        self.shadowColor = shadowColor
        self.shadowOffsetX = offsetX
        self.shadowOffsetY = offsetY
        self.placeholder = placeholder
        self.imageURL = imageURL
        self.image = image
        
        
    }
    
    
    public var body: some View {
        
        Card(child: AnyView(
            VStack{
                if imageURL != "", #available(iOS 14.0, *) {
          
                    AsyncImage(url: URL(string:imageURL)!,  placeholder: {
                        placeholder
                        
                    },
                    image: {
                        Image(uiImage: $0)
                            .resizable()
                        
                        
                    })
                    .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
                    .cornerRadius(10.0, corners: [.topLeft, .topRight])
                }
                else{
                    image
                        .resizable()
                        
                        .frame(width: .infinity)
                        .cornerRadius(10.0, corners: [.topLeft, .topRight])
                }
                
                
                
                TextCard(title:title,
                         description:description,
                         backgroundColor: Color.white.opacity(0),
                         shadowColor: Color.white.opacity(0)
                )
                .frame(maxHeight: 70)
                
                
            }
        ),
        borderRadius: 10.0,
        backgroundColor: backgroundColor,
        shadowColor: shadowColor,
        shadowRadius:shadowRadius,
        offsetX: shadowOffsetX,
        offsetY: shadowOffsetY
        )
    }
}
