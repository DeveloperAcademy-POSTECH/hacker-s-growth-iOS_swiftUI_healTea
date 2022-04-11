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

let roles = ["don_0", "don_1", "don_2"]

extension Color {
    static let greencolor = Color("bg_color")
}

struct Carousel: View {
    
    @State var spacing: CGFloat = 10
    @State var headspace: CGFloat = 10
    @State var sidesScaling: CGFloat = 0.8
    @State var isWrap: Bool = false
    @State var autoScroll: Bool = false
    @State var time: TimeInterval = 1
    @State var currentIndex: Int = 0
            
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.greencolor)
                .frame(width: 400)
                .frame(height: 85)
                .padding(EdgeInsets(top: 0, leading: 0, bottom:100, trailing: 0))
                .offset(y:20)
            Circle()
                .fill(Color.white)
                .frame(width: 50,height:50)
                .offset(y:-30)
            
            Image("search")
                .frame(width: 44, height: 44)
                .padding(EdgeInsets(top: 0, leading: 0, bottom:100, trailing: 0))
                .offset(x:150, y:20)
                
            Text("Daily Menu")
                .offset(x: 0, y:45)
            
            .font(.system(size: 26, weight: .bold))
            .foregroundColor(.greencolor)
            .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                        
        }
                
        ZStack{
            Text("오늘 이 음료 어떠세요.")
                .fontWeight(.light)
                .foregroundColor(.gray)
                .offset(x: 0, y: 40)
                .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
        }

        VStack{

            Spacer().frame(height: 40)
            
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
                    .frame(height: 400)
                    .cornerRadius(30)
            
            .frame(height: 400)
            Spacer()
                .padding(EdgeInsets(top: 0, leading: 0, bottom:100, trailing: 0))
                
            }
        }

//struct Carousel_Previews: PreviewProvider {
//    static var previews: some View {
//        Carousel()
//            }
//        }
    }
}
