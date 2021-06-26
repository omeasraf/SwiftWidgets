//
//  SwiftUIView.swift
//  
//
//  Created by Ome Asraf on 6/26/21.
//


import SwiftUI
import Kingfisher

/// ImageCarousel: A scrollable poster view.
///
/// This example shows how to create an [ImageCarousel] with different colors and
/// styling.
///
/// ```swift
/// ImageCarousel(images: CarouselModel.example, width: 130){ image in
///    AnyView(Text(image.name))
/// }
/// .frame(height: 400)
/// ```
///
///  - Author: Ome Asraf
///  - Version: 1.0.0
///  - Image: <https://raw.githubusercontent.com/omeasraf/SwiftWidgets/main/Images/ImageCarousel.png>
///

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public struct ImageCarousel: View {
    var images: [CarouselModel]
    var width: CGFloat
    var height: CGFloat
    var cornerRadius: CGFloat
    var color: Color
    var destination: (CarouselModel) -> AnyView
    
    public init(images: [CarouselModel], width: CGFloat = 125,height: CGFloat = 400, cornerRadius: CGFloat = 5, color: Color = .black, destination: @escaping (CarouselModel) -> AnyView){
        self.images = images
        self.width = width
        self.height = height
        self.cornerRadius = cornerRadius
        self.color = color
        self.destination = destination
    }
    
    func getScale(proxy: GeometryProxy) -> CGFloat {

        let midPoint: CGFloat = width
        
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        
        var scale: CGFloat = 1.0
        
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - width / 2)
        if diffFromCenter < width {
            scale = 1 + (width - diffFromCenter) / 500
        }
        
        return scale
    }
    
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 16) {
                ForEach(images, id: \.self) { image in
                    GeometryReader { proxy in
                        let scale = getScale(proxy: proxy)
                        NavigationLink(
                            destination: destination(image),
                            label: {
                                VStack(spacing: 8) {
                                    if (!image.isLocal){
                                    KFImage(image.url)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: width + 55)
                                        .clipped()
                                        .cornerRadius(8)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8)
                                                .stroke(Color(white: 0.4))
                                        )
                                        .shadow(radius: 3)
                                    }
                                    else{
                                        Image(image.url.path)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: width + 55)
                                            .clipped()
                                            .cornerRadius(8)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .stroke(Color(white: 0.4))
                                            )
                                            .shadow(radius: 3)
                                    }
                                    Text(image.name)
                                        .font(.system(size: 16, weight: .semibold))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(color)
                          
                                }
                            })
                        
                            .scaleEffect(.init(width: scale, height: scale))
                            .padding(.vertical)
                    }
                    .frame(width: width, height: height)
                    .padding(.horizontal, 32)
                    .padding(.vertical, 32)
                }
                Spacer()
                    .frame(width: 16)
            }
        }
    }
}




struct ImageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ImageCarousel(images: CarouselModel.example){ image in
            AnyView(Text(image.name))
        }
           
    }
}
