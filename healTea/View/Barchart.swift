//
//  Barchart.swift
//  healTea
//
//  Created by 유정인 on 2022/04/11.
//

import SwiftUI

struct ColorManager {
    static let DonationBackground = Color("DonationBackground")
    static let DonationBar_1 = Color("DonationBar_1")
    static let DonationBar_2 = Color("DonationBar_2")
    static let DonationBar_3 = Color("DonationBar_3")
}

struct Barchart: View {
    
    @State private var selectedColor = 0 // 앱을 켰을 떄 month로 선택이 되어있게 하고 싶으면 '=1'로 변경
    
    var body: some View {
        ZStack {
            //ColorManager.BackgroundColor.ignoresSafeArea()  // Color만 하면 위와 아랫부분 베젤은 색이 없기 때문에 ignore로 채우기 가능
            VStack {
                Picker(selection: $selectedColor, label: Text("")) {
                    Text("Day").tag(0)  // tag를 추가하면 픽했을 때 표시가 됨
                    Text("Month").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 24)
                
                HStack(alignment: .bottom) {
                    VStack {
                        RoundedRectangle(cornerRadius: 10).frame(width:30, height: 60)                            .foregroundColor(ColorManager.DonationBar_1)
                        Text("1월")
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10).frame(width:30, height: 100)                            .foregroundColor(ColorManager.DonationBar_1)
                        Text("2월")
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10).frame(width:30, height: 80)                            .foregroundColor(ColorManager.DonationBar_1)
                        Text("3월")
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10).frame(width:30, height: 90)                            .foregroundColor(ColorManager.DonationBar_1)
                        Text("4월")
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10).frame(width:30, height: 130)                            .foregroundColor(ColorManager.DonationBar_2)
                        Text("5월")
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:30, height: 120)
                            .foregroundColor(ColorManager.DonationBar_3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 9)
                                    .frame(width: 28, height: 118)
                                    .foregroundColor(.white)
                            )
                        
                        Text("6월")
                    }
                    VStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:30, height: 120)
                            .foregroundColor(ColorManager.DonationBar_3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 9)
                                    .frame(width: 28, height: 118)
                                    .foregroundColor(.white)
                            )
                        Text("7월")
                    }
                }
                .padding(.top, 24)
            }
        }
    }
}

struct Barchart_Previews: PreviewProvider {
    static var previews: some View {
        Barchart()
    }
}
