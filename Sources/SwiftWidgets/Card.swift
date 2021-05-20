//
//  Card.swift
//  SwiftWidgets
//
//  Created by Ome Asraf on 5/20/21.
//

import SwiftUI


/// A card: A panel of texts with slightly rounded corners and an
/// elevation shadow.
///
/// This example shows how to create a [Card] with different colors and
/// styling.
///
/// ```swift
/// Card(child: AnyView(Text("Hello World").foregroundColor(.white).padding(20)),
///     borderRadius: 10,
///     backgroundColor: Color.red,
///     shadowColor: Color.red.opacity(0.5),
///     shadowRadius: 5,offsetY: 10)
/// ```
///
///  - Author: Ome Asraf
///  - Version: 1.0.0
///  - Image: <https://raw.githubusercontent.com/omeasraf/SwiftWidgets/main/Images/card.png>
///
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public struct Card: View {
    var child: AnyView
    var cornerRadius:CGFloat
    var shadowRadius: CGFloat
    var backgroundColor: Color
    var shadowColor: Color
    var shadowOffsetX: CGFloat
    var shadowOffsetY: CGFloat
    
    
    
    public init(child:AnyView,borderRadius:CGFloat = 2, backgroundColor:Color = Color.white, shadowColor: Color = Color.white, shadowRadius: CGFloat = 5, offsetX:CGFloat = 0,offsetY:CGFloat = 5){
        self.child = child
        self.backgroundColor = backgroundColor
        self.cornerRadius = borderRadius
        self.shadowRadius = shadowRadius
        self.shadowColor = shadowColor
        self.shadowOffsetX = offsetX
        self.shadowOffsetY = offsetY
        
    }
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .fill(backgroundColor)
                .shadow(color: shadowColor, radius: shadowRadius,x: shadowOffsetX, y: shadowOffsetY)
            child
        }.padding()
        
    }
}
