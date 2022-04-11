//
//  Mypage.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/08.
//

import Foundation
import SwiftUI

struct Mypage: View {
    var body: some View {
       
        VStack{
            //검색
            HStack{
                Spacer()
                Image(systemName: "magnifyingglass")
                    .padding(.trailing)
            }
            Text("힐티 친환경 프로젝트")
                .font(.title)
                .foregroundColor(Color.green)
            Text("텀블러를 사용하여 일회용품 사용량을 줄여봐요")
                .foregroundColor(Color.green)
                .padding(.bottom)
            
            //이미지
            Image("character")
                .padding(.vertical)
            Image("bar")
                .padding(.bottom)
            
            HStack{
               VStack{
                   Image("Mypage_Image1")
                    .padding(.trailing)
                   Text("선호도조사")
                       .padding(.trailing)
                   
               }
                VStack{
                    Image("Mypage_Image2")
                        .padding(.horizontal)
                    Text("내 정보")
                }
                VStack{
                    Image("Mypage_Image3")
                        .padding(.leading)
                    Text("기부처")
                        .padding(.leading)
                }
            }
            Spacer()
        }
        
    }
}


struct Mypage_Previews: PreviewProvider {
    static var previews: some View {
        Mypage()
    }
}
