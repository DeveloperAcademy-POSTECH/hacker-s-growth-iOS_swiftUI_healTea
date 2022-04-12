//
//  DonationList.swift
//  healTea
//
//  Created by 유정인 on 2022/04/11.
//

import SwiftUI

struct DonationList: View {
    var body: some View {
        NavigationView {
            VStack {
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
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10).frame(width: 350, height: 200)
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                    
                    VStack {
                        HStack {
                            Circle().frame(width: 60, height: 60)
                                .foregroundColor(ColorManager.DonationBar_3)
                            
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
                            money_num()
                            money_kor()
                            donation_butn()
                        }
                        .padding(.horizontal, 60)
                        
                    }
                }
                
                VStack {
                    ZStack {
                        Box_2()
                        
                        HStack {
                            Circle().frame(width: 50, height: 50)
                                .foregroundColor(Color("DonationBar_3"))  // Color("DonationaBar_3") = ColorManager.DonationBar_3
                            
                            VStack(alignment: .leading) {
                                Text("GREEN PEACE (그린피스)")
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                
                                Text("2000₩")
                                    .fontWeight(.light)
                                    .foregroundColor(.white)
                            }
                            .padding(.leading, 10)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal, 70)
                    }
                }
                .padding(.top, 8)
                
                VStack {
                    ZStack {
                        Box_1()
                        
                        HStack {
                            Circle().frame(width: 50, height: 50)
                                .foregroundColor(Color("DonationBar_3"))  // Color("DonationaBar_3") = ColorManager.DonationBar_3
                            
                            VStack(alignment: .leading) {
                                Text("WWF (세계자연기금)")
                                    .fontWeight(.medium)
                                
                                Text("2000₩")
                                    .fontWeight(.light)
                                
                            }
                            .padding(.leading, 10)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal, 70)
                    }
                }
                .padding(.top, 8)
                
                VStack {
                    ZStack {
                        Box_1()
                        
                        HStack {
                            Circle().frame(width: 50, height: 50)
                                .foregroundColor(Color("DonationBar_3"))  // Color("DonationaBar_3") = ColorManager.DonationBar_3
                            
                            VStack(alignment: .leading) {
                                Text("WWF (세계자연기금)")
                                    .fontWeight(.medium)
                                
                                Text("2000₩")
                                    .fontWeight(.light)
                                
                            }
                            .padding(.leading, 10)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal, 70)
                    }
                }
                .padding(.top, 8)
            }
        }
    }
}

struct Box_1: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 330, height: 80)
            .foregroundColor(ColorManager.DonationList)
            .overlay(
                RoundedRectangle(cornerRadius: 10).frame(width: 328, height: 78)
                    .foregroundColor(.white)
            )
    }
}

struct Box_2: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 330, height: 80)
            .foregroundColor(ColorManager.DonationList)
        
    }
}

struct money_num: View {
    var body: some View {
        HStack {
            Spacer()
             
            Text("금액")
                .fontWeight(.bold)
                .foregroundColor(ColorManager.DonationFont)
            Text("2000원")
                .fontWeight(.regular)
                .foregroundColor(ColorManager.DonationFont)
        }
    }
}

struct money_kor: View {
    var body: some View {
        HStack {
            Spacer()
            Text("이천원")
                .fontWeight(.bold)
                .foregroundColor(ColorManager.DonationList)
        }
    }
}

struct donation_butn: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).frame(width: 100, height: 40)
                .foregroundColor(ColorManager.DonationList)
            
            Text("기부하기")
                .fontWeight(.bold)
                
                .foregroundColor(.white)
        }
    }
}


struct DonationList_Previews: PreviewProvider {
    static var previews: some View {
        DonationList()
    }
}
