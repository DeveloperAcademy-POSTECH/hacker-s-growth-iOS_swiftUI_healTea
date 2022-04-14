//
//  ContentView.swift
//  ACarouselDemo iOS
//
//  Created by Autumn on 2020/11/16.
//

import SwiftUI
import ACarousel
               
//struct Item: Identifiable {
//    let id = UUID()
//    let image: Image
//}

let roles = ["b1", "b2", "b3","b4", "b5", "b6","b7", "b8", "b9","b10"]

extension Color {
    static let greencolor = Color("bg_color")
}

struct mainpage: View {
    
    @State private var showModal = false
    @State var spacing: CGFloat = 10
    @State var headspace: CGFloat = 10
    @State var sidesScaling: CGFloat = 0.8
    @State var isWrap: Bool = false
    @State var autoScroll: Bool = false
    @State var time: TimeInterval = 5
    @State var currentIndex: Int = 5
            
    var body: some View {
        NavigationView {
        
            VStack{
                ZStack{
                    Image("Logo1")
                        .resizable()
                        .frame(width: 70, height: 70, alignment: .center)
                        .offset(x:0, y:-320)
                                    
                    Text("Daily Menu").font(.system(size:36,weight: .bold))
                        .offset(x: 0, y:-240)
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(.greencolor)
                    
                    Text("오늘 이 음료 어떠세요.").font(.system(size:24))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                        .offset(x: 0, y:-200)
                    
                    ZStack{
                        ACarousel(roles,
                                  id: \.self,
                                  index: $currentIndex,
                                  spacing: spacing,
                                  headspace: headspace,
                                  sidesScaling: sidesScaling,
                                  isWrap: isWrap,
                                  autoScroll: autoScroll ? .active(time) : .inactive) { name in
                            Image(name)
                                .frame(height: 380)
                                .frame(width:280)
                                .cornerRadius(30)
                                .navigationBarTitle("")
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.green))
                                .shadow(color: Color.gray, radius: 5, x: 1, y: 3)
                            }
                            Spacer()
                            Spacer()
                        }
                        .offset(x: 0, y:50)
                    }
                } // VStack
            }
    } // body
} // struct
        

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        mainpage()
    }
}

