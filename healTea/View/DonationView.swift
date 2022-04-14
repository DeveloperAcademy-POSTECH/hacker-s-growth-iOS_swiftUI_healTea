//
//  DonationViw.swift
//  healTea
//
//  Created by 유정인 on 2022/04/13.
//

import SwiftUI

struct DonationView: View {
    
    @State private var selected1 = true
    @State private var selected2 = false
    @State private var selected3 = false
    @State private var selected_donation = 0
    
    private var donations = [["don_0", "그린 피스", "Green Peace"],
                             ["don_1", "세계 자연 기금", "WWF"],
                             ["don_2", "환경 재단", "K-Green Foundation"]]
    
    var body: some View {
        NavigationView {
        
            ScrollView(.vertical, showsIndicators: false) {
            
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
                                Image(donations[selected_donation][0])
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 60, height: 60)
                                    .shadow(radius: 3)
            
                                VStack(alignment: .leading) {
                                    Text(donations[selected_donation][1])
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorManager.DonationFont)
            
                                    Text(donations[selected_donation][2])
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
                                self.selected1.toggle()
                                self.selected2 = false
                                self.selected3 = false
                                self.selected_donation = 0
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
                    
                                            Text("₩ 2000")
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
                                self.selected3 = false
                                self.selected1 = false
                                self.selected_donation = 1
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
                    
                                            Text("₩ 2000")
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
                                self.selected2 = false
                                self.selected1 = false
                                self.selected_donation = 2
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
                    
                                            Text("₩ 2000")
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
    }
}

struct Box_1: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 310, height: 100)
            .foregroundColor(ColorManager.DonationList)
            .overlay(
                RoundedRectangle(cornerRadius: 10).frame(width: 308, height: 98)
                    .foregroundColor(.white)
            )
    }
}

struct Box_2: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10).frame(width: 310, height: 100)
            .foregroundColor(ColorManager.DonationList)
        
    }
}

struct TextFieldClearButton: ViewModifier {

    @Binding var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            content

                .overlay {
                    if !text.isEmpty {
                        HStack {
                            Spacer()
                            Button(
                                action: {
                                    self.text = ""
                                })
                            {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(Color(UIColor.opaqueSeparator))
                            }
                        }
                        .padding(.trailing, 4)
                    }
                }
        }
    }
}

struct ClearButton: View {
    @State var money = ""

    var body: some View {

        VStack {
            TextField("기부할 금액을 입력하세요.", text: $money)
                .textFieldStyle(.roundedBorder)
                .modifier(TextFieldClearButton(text: $money))
                .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                .foregroundColor(ColorManager.DonationFont)

        }
        .padding()

    }
}

struct donationButton: View {
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).frame(width: 100, height: 40)
                .foregroundColor(ColorManager.DonationList)
            
            Button(action: {
                self.showingAlert = true
            }) {
                Text("기부하기")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .alert(isPresented: $showingAlert) {
                Alert(title:  Text("기부"), message: Text("기부가 완료되었습니다"))
            
            }
        }
    }
}

struct DonationView_Previews: PreviewProvider {
    static var previews: some View {
        DonationView()
    }
}
