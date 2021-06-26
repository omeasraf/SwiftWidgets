//
//  File.swift
//  
//
//  Created by Ome Asraf on 6/26/21.
//

import Foundation
import SwiftUI


struct CarouselModel: Hashable {
    var url: URL
    var name: String
    var isLocal: Bool = false

}

extension CarouselModel {
    static let example = [
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/7rhzEufovmmUqVjcbzMHTBQ2SCG.jpg")!, name: "Luca (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/z8CExJekGrEThbpMXAmCFvvgoJR.jpg")!, name: "Army of the Dead (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/lPsD10PP4rgUGiGR4CCXA6iY0QQ.jpg")!, name: "Raya and the Last Dragon (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg")!, name: "Black Widow (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/4q2hz2m8hubgvijz8Ez0T2Os2Yv.jpg")!, name: "A Quiet Place Part II (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/rTh4K5uw9HypmpGslcKd4QfHl93.jpg")!, name: "Cruella (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/8XZI9QZ7Pm3fVkigWJPbrXCMzjq.jpg")!, name: "Tom & Jerry (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/xD9mc8JCVXA8T8u4Od7qOUBuGH4.jpg")!, name: "The Banishing (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/7rhzEufovmmUqVjcbzMHTBQ2SCG.jpg")!, name: "Luca (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/z8CExJekGrEThbpMXAmCFvvgoJR.jpg")!, name: "Army of the Dead (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/lPsD10PP4rgUGiGR4CCXA6iY0QQ.jpg")!, name: "Raya and the Last Dragon (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg")!, name: "Black Widow (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/4q2hz2m8hubgvijz8Ez0T2Os2Yv.jpg")!, name: "A Quiet Place Part II (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/rTh4K5uw9HypmpGslcKd4QfHl93.jpg")!, name: "Cruella (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/8XZI9QZ7Pm3fVkigWJPbrXCMzjq.jpg")!, name: "Tom & Jerry (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/xD9mc8JCVXA8T8u4Od7qOUBuGH4.jpg")!, name: "The Banishing (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/7rhzEufovmmUqVjcbzMHTBQ2SCG.jpg")!, name: "Luca (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/z8CExJekGrEThbpMXAmCFvvgoJR.jpg")!, name: "Army of the Dead (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/lPsD10PP4rgUGiGR4CCXA6iY0QQ.jpg")!, name: "Raya and the Last Dragon (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg")!, name: "Black Widow (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/4q2hz2m8hubgvijz8Ez0T2Os2Yv.jpg")!, name: "A Quiet Place Part II (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/rTh4K5uw9HypmpGslcKd4QfHl93.jpg")!, name: "Cruella (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/8XZI9QZ7Pm3fVkigWJPbrXCMzjq.jpg")!, name: "Tom & Jerry (2021)"),
        CarouselModel(url: URL(string: "https://www.themoviedb.org/t/p/w1280/xD9mc8JCVXA8T8u4Od7qOUBuGH4.jpg")!, name: "The Banishing (2021)"),
        
    ]
}
