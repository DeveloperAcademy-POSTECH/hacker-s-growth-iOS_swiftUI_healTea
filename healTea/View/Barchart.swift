//
//  Barchart.swift
//  healTea
//
//  Created by 유정인 on 2022/04/11.
//

import SwiftUI
// import SwiftUICharts

/*
struct Barchart: View {
    
    var demoData: [Double] = [8, 2, 4, 6, 12, 9, 2]

    var body: some View {
        Barchart()
            .data(demoData)
            .chartStyle(ChartStyle(backgroundColor: .white, foregroundColor: ColorManager.DonationBar_1)
    }
}
*/
 

struct ColorManager {
    static let DonationBackground = Color("DonationBackground")
    static let DonationBar_1 = Color("DonationBar_1")
    static let DonationBar_2 = Color("DonationBar_2")
    static let DonationBar_3 = Color("DonationBar_3")
    static let DonationFont = Color("DonationFont")
    static let DonationList = Color("DonationList")
}

struct Barchart: View {
    
    @State private var selectedColor = 0 // 앱을 켰을 떄 month로 선택이 되어있게 하고 싶으면 '=1'로 변경
    
    var body: some View {
        ZStack {
            //ColorManager.BackgroundColor.ignoresSafeArea()  // Color만 하면 위와 아랫부분 베젤은 색이 없기 때문에 ignore로 채우기 가능
            VStack {
        // Picker(selection: $selectedColor, label: Text("")) {
        //     Text("Day").tag(0)  // tag를 추가하면 픽했을 때 표시가 됨
        //     Text("Month").tag(1)
        // }
        // .pickerStyle(SegmentedPickerStyle())
        // .padding(.horizontal, 24)
                
                HStack(alignment: .bottom) {
                    
                    VStack {
                        BarView_1(value: 60)
                        Text("1월")
                            .foregroundColor(ColorManager.DonationFont)
                    }
                    VStack {
                        BarView_1(value: 80)
                        Text("2월")
                            .foregroundColor(ColorManager.DonationFont)
                    }
                    VStack {
                        BarView_1(value: 70)
                        Text("3월")
                            .foregroundColor(ColorManager.DonationFont)
                    }
                    VStack {
                        BarView_1(value: 100)
                        Text("4월")
                            .foregroundColor(ColorManager.DonationFont)
                    }
                    VStack {
                        BarView_2(value: 120)
                        Text("5월")
                            .foregroundColor(ColorManager.DonationFont)
                    }
                    VStack {
                        BarView_3()
                        Text("6월")
                            .foregroundColor(ColorManager.DonationFont)
                    }
                    VStack {
                        BarView_3()
                        Text("7월")
                            .foregroundColor(ColorManager.DonationFont)
                    }
                }
                .padding(.horizontal, 60)
                .animation(.spring(), value: selectedColor)
            }
        }
    }
}

struct BarView_1: View {
    
    var value: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width:30, height: value)
            .foregroundColor(ColorManager.DonationBar_1)
        
    }
}

struct BarView_2: View {
    
    var value: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width:30, height: value)
            .foregroundColor(ColorManager.DonationBar_2)
        
    }
}

struct BarView_3: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width:30, height: 100)
            .foregroundColor(ColorManager.DonationBar_3)
            .overlay(
                RoundedRectangle(cornerRadius: 10).frame(width:28, height: 98)
                    .foregroundColor(.white)
            )
    }
}

struct Barchart_Previews: PreviewProvider {
    static var previews: some View {
        Barchart()
            .previewInterfaceOrientation(.portrait)
    }
}
