//
//  DonationListButton.swift
//  healTea
//
//  Created by 유정인 on 2022/04/14.
//

import SwiftUI

struct DonationListButton: View {
    
    @State private var selected1 = true
    @State private var selected2 = false
    @State private var selected3 = false
    
    var body: some View {
        VStack {
            HStack {
    
                Text("나의 기부")
                    .foregroundColor(ColorManager.DonationFont)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
    
                Spacer()
    
            }
            .padding(.horizontal, 50)
    
            Barchart()
    
            Spacer()
    
            VStack(alignment: .leading) {
                HStack(alignment: .bottom) {
                    Text("나의 기부처")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(ColorManager.DonationFont)
    
                    Spacer(minLength: 50)
    
                    NavigationLink(destination: DonationDetail()) {
                        Text("더보기")
                            .font(.system(size: 15, weight: .thin))
                            .foregroundColor(ColorManager.DonationFont)
    
                    }
                }
                .padding(.horizontal, 50)
            }
            .padding(.top, 30)
    
            ZStack {
                RoundedRectangle(cornerRadius: 10).frame(width: 330, height: 220)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
    
                VStack {
                    HStack {
                        Image("don_0")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                            .shadow(radius: 3)
    
                        VStack(alignment: .leading) {
                            Text("그린피스")
                                .fontWeight(.bold)
                                .foregroundColor(ColorManager.DonationFont)
    
                            Text("GREEN PEACE")
                                .fontWeight(.light)
                                .foregroundColor(ColorManager.DonationFont)
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 60)
    
                    VStack(alignment: .trailing) {
                        HStack {
                            ClearButton()
    
                            Text("원")
                                .foregroundColor(ColorManager.DonationFont)
                            
                        }
                        donationButton()
                        
                    }
                    .padding(.horizontal, 60)
    
                }
            }
    
            VStack {
                ZStack {
                    Button(action: {
                        self.selected1.toggle()  // self는 class에서 자기자신을 가리키는 단어. self.selected라는 것은 이 메서드(?) 내에서 정의된 selected가 toggle 되도록
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).frame(width: 310, height: 100)
                                .foregroundColor(ColorManager.DonationList)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10).frame(width: 308, height: 98)
                                        .foregroundColor(selected1 ? ColorManager.DonationList : Color.white)
                            )
                            
                            HStack {
                                Image("don_0")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 60, height: 60)
                                    .shadow(radius: 3)
            
                                VStack(alignment: .leading) {
                                    Text("GREEN PEACE (그린피스)")
                                        .fontWeight(.medium)
                                        .foregroundColor(selected1 ? Color.white : Color.black)
                                        .multilineTextAlignment(.leading)
            
                                    Spacer()
            
                                    Text("2000₩")
                                        .fontWeight(.light)
                                        .foregroundColor(selected1 ? Color.white : Color.black)
                                }
                                .padding()
            
                                Spacer()
            
                            }
                            .padding(.horizontal, 70)
                            
                        }
                    }
                }
            }
            .padding(.top, 8)
    
            VStack {
                ZStack {
                    Button(action: {
                        self.selected2.toggle()
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).frame(width: 310, height: 100)
                                .foregroundColor(ColorManager.DonationList)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10).frame(width: 308, height: 98)
                                        .foregroundColor(selected2 ? ColorManager.DonationList : Color.white)
                            )
                            
                            HStack {
                                Image("don_1")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 60, height: 60)
                                    .shadow(radius: 3)
            
                                VStack(alignment: .leading) {
                                    Text("WWF (세계자연기금)")
                                        .fontWeight(.medium)
                                        .foregroundColor(selected2 ? Color.white : Color.black)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 101)
            
                                    Spacer()
            
                                    Text("2000₩")
                                        .fontWeight(.light)
                                        .foregroundColor(selected2 ? Color.white : Color.black)
                                }
                                .padding()
            
                                Spacer()
            
                            }
                            .padding(.horizontal, 70)
                            
                        }
                    }
                }
            }
            .padding(.top, 8)
    
            VStack {
                ZStack {
                    Button(action: {
                        self.selected3.toggle()
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).frame(width: 310, height: 100)
                                .foregroundColor(ColorManager.DonationList)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10).frame(width: 308, height: 98)
                                        .foregroundColor(selected3 ? ColorManager.DonationList : Color.white)
                            )
                            
                            HStack {
                                Image("don_2")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 60, height: 60)
                                    .shadow(radius: 3)
            
                                VStack(alignment: .leading) {
                                    Text("K-Green Foundation (환경재단)")
                                        .fontWeight(.medium)
                                        .foregroundColor(selected3 ? Color.white : Color.black)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 160)
            
                                    Spacer()
            
                                    Text("2000₩")
                                        .fontWeight(.light)
                                        .foregroundColor(selected3 ? Color.white : Color.black)
                                }
                                .padding()
            
                                Spacer()
            
                            }
                            .padding(.horizontal, 70)
                            
                        }
                    }
                }
            }
            .padding(.top, 8)
            
        }
        .padding(.bottom, 50)
    }
}

struct DonationListButton_Previews: PreviewProvider {
    static var previews: some View {
        DonationListButton()
    }
}
