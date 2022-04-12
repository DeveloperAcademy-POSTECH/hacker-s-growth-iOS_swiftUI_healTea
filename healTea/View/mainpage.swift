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
    
    @State var spacing: CGFloat = 10
    @State var headspace: CGFloat = 10
    @State var sidesScaling: CGFloat = 0.8
    @State var isWrap: Bool = false
    @State var autoScroll: Bool = false
    @State var time: TimeInterval = 1
    @State var currentIndex: Int = 0
            
    var body: some View {
        
        VStack{
        ZStack{
            Rectangle()
                .fill(Color.greencolor)
                .frame(width: 400)
                .frame(height: 85)
                .padding(EdgeInsets(top: 0, leading: 0, bottom:100, trailing: 0))
                .offset(y:20)
        

            Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .offset(x:0, y:-30)
   
                  
            Image("search")
                .frame(width: 44, height: 44)
                .padding(EdgeInsets(top: 0, leading: 0, bottom:100, trailing: 0))
                .offset(x:150, y:20)
                            
   
            
            Text("Daily Menu").font(.system(size:36,weight: .bold))
                .offset(x: 0, y:55)
            
            .font(.system(size: 26, weight: .bold))
            .foregroundColor(.greencolor)
            .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                        
 
        }

            VStack{
                Text("오늘 이 음료 어떠세요.").font(.system(size:24))
                    
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                Spacer().frame(height:10)
                
                ACarousel(roles,
                          id: \.self,
                          index: $currentIndex,
                          spacing: spacing,
                          headspace: headspace,
                          sidesScaling: sidesScaling,
                          isWrap: isWrap,
                          autoScroll: autoScroll ? .active(time) : .inactive) { name in
                    Image(name)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 380)
                        
                        .cornerRadius(30)
                
                }
                Spacer()

                
            } // VStack
        } // VStack
    } // body
} // struct
        

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        mainpage()

    }
}

