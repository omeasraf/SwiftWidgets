//
//  Icon.swift
//  SwiftWidgets
//
//  Created by Ome Asraf on 4/24/21.
//

import SwiftUI



/// A graphical icon view drawn with a [systemName] using the SF Symbols.
///
/// This example shows how to create a [HStack] of [Icon]s in different colors and
/// sizes. The first [Icon] uses a [semanticLabel] to announce in accessibility.
///
/// ![A horizontal stack of icons representing a red apple logo, a green airplane, and a blue car](https://raw.githubusercontent.com/omeasraf/SwiftWidgets/main/Images/iconsExample.png)
///
/// ```swift
/// VStack{
///    Icon(SFIcons.applelogo,
///         size: 25,
///         color: Color.red,
///         semanticLabel: "Apple Logo")
///    Icon(SFIcons.airplane,
///         size: 35,
///         color: Color.green)
///    Icon(SFIcons.carFill,
///         size: 45,
///         color: Color.blue)
/// }
/// ```
///
///  - Author: Ome Asraf
///  - Version: 1.0.1
///  - Image: <https://raw.githubusercontent.com/omeasraf/SwiftWidgets/main/Images/iconsExample.png>
///
@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public struct Icon: View {
    var icon: String
    var size: CGFloat
    var color: Color
    var semanticLabel: String
    
    public init(_ icon: String, size: CGFloat = -1, color: Color = Color.white, semanticLabel: String = "icon") {
        self.icon = icon
        self.size = size
        self.color = color
        self.semanticLabel = semanticLabel
    }

    public var body: some View {
            Image(systemName: icon)
                .if(size == -1, transform: {
                    $0.resizable()
                })
                .if(size != -1, transform: {
                    $0.font(.system(size: size))
                })
                .font(.system(size: size))
                .foregroundColor(color)
                .accessibility(label: Text(semanticLabel))
    }
}
