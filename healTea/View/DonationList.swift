////
////  DonationList.swift
////  healTea
////
////  Created by 유정인 on 2022/04/13.
////
//
//import SwiftUI
//
//struct DonationList: View {
//
//    @State var money = ""
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                HStack {
//
//                    Text("나의 기부")
//                        .foregroundColor(ColorManager.DonationFont)
//                        .font(.system(size: 30))
//                        .fontWeight(.bold)
//
//                    Spacer()
//
//                }
//                .padding(.horizontal, 50)
//
//                Barchart()
//
//                Spacer()
//
//                VStack(alignment: .leading) {
//                    HStack(alignment: .bottom) {
//                        Text("나의 기부처")
//                            .font(.system(size: 25, weight: .bold))
//                            .foregroundColor(ColorManager.DonationFont)
//
//                        Spacer(minLength: 50)
//                        NavigationLink(destination: DonationDetail()) {
//                            Text("더보기")
//                                .font(.system(size: 15, weight: .thin))
//                                .foregroundColor(ColorManager.DonationFont)
//
//                        }
//                    }
//                    .padding(.horizontal, 50)
//                }
//                .padding(.top, 30)
//
//                ZStack {
//                    RoundedRectangle(cornerRadius: 10).frame(width: 350, height: 230)
//                        .foregroundColor(.white)
//                        .shadow(radius: 2)
//
//                    VStack {
//                        HStack {
//                            Image("don_0")
//                                .resizable()
//                                .clipShape(Circle())
//                                .frame(width: 60, height: 60)
//                                .shadow(radius: 3)
//
//                            VStack(alignment: .leading) {
//                                Text("그린피스")
//                                    .fontWeight(.bold)
//                                    .foregroundColor(ColorManager.DonationFont)
//
//                                Text("GREEN PEACE")
//                                    .fontWeight(.light)
//                                    .foregroundColor(ColorManager.DonationFont)
//                            }
//                            Spacer()
//                        }
//                        .padding(.horizontal, 60)
//
//                        VStack(alignment: .trailing) {
//                            HStack {
////                                Form {
////                                    Section {
////                                        TextField("기부할 금액을 입력하세요.", text: $money)
////                                            .textFieldStyle(.roundedBorder)
////                                            .modifier(TextFieldClearButton(text: $money))
////                                            .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
////                                            .foregroundColor(ColorManager.DonationFont)
////
////                                    }
////                                }
//                                ClearButton(money: $money)
//
//                                Text("원")
//                                    .foregroundColor(ColorManager.DonationFont)
//                            }
//
//                            donationButton(money: $money, greenPeace: $greenPeace, wwf: $wwf, kGreen: $kGreen, selected_donation: $selected_donation)
//                        }
//                        .padding(.horizontal, 60)
//
//                    }
//                }
//
//                VStack {
//                    ZStack {
//                        Box_2()
//
//                        HStack {
//                            Image("don_0")
//                                .resizable()
//                                .clipShape(Circle())
//                                .frame(width: 60, height: 60)
//                                .shadow(radius: 3)
//
//                            VStack(alignment: .leading) {
//                                Text("GREEN PEACE (그린피스)")
//                                    .fontWeight(.medium)
//                                    .foregroundColor(.white)
//
//                                Spacer()
//
//                                Text("2000₩")
//                                    .fontWeight(.light)
//                                    .foregroundColor(.white)
//                            }
//                            .padding()
//
//                            Spacer()
//
//                        }
//                        .padding(.horizontal, 70)
//                    }
//                }
//                .padding(.top, 8)
//
//                VStack {
//                    ZStack {
//                        Box_1()
//
//                        HStack {
//                            Image("don_1")
//                                .resizable()
//                                .clipShape(Circle())
//                                .frame(width: 60, height: 60)
//                                .shadow(radius: 3)
//
//                            VStack(alignment: .leading) {
//                                Text("WWF (세계자연기금)")
//                                    .fontWeight(.medium)
//
//                                Spacer()
//
//                                Text("2000₩")
//                                    .fontWeight(.light)
//
//                            }
//                            .padding()
//
//                            Spacer()
//
//                        }
//                        .padding(.horizontal, 70)
//                    }
//                }
//                .padding(.top, 8)
//
//                VStack {
//                    ZStack {
//                        Box_1()
//
//                        HStack {
//                            Image("don_2")
//                                .resizable()
//                                .clipShape(Circle())
//                                .frame(width: 60, height: 60)
//                                .shadow(radius: 3)
//
//                            VStack(alignment: .leading) {
//                                Text("K-Green Foundation (환경재단)")
//                                    .fontWeight(.medium)
//
//                                Spacer()
//
//                                Text("2000₩")
//                                    .fontWeight(.light)
//
//                            }
//                            .padding()
//
//                            Spacer()
//
//                        }
//                        .padding(.horizontal, 70)
//                    }
//                }
//                .padding(.top, 8)
//            }
//            .padding(.bottom, 70)
//        }
//    }
//}
//
////struct Box_1: View {
////
////    var body: some View {
////        RoundedRectangle(cornerRadius: 10).frame(width: 330, height: 80)
////            .foregroundColor(ColorManager.DonationList)
////            .overlay(
////                RoundedRectangle(cornerRadius: 10).frame(width: 328, height: 78)
////                    .foregroundColor(.white)
////            )
////    }
////}
////
////struct Box_2: View {
////    var body: some View {
////        RoundedRectangle(cornerRadius: 10).frame(width: 310, height: 80)
////            .foregroundColor(ColorManager.DonationList)
////
////    }
////}
////
////struct TextFieldClearButton: ViewModifier {
////
////    @Binding var text: String
////
////    func body(content: Content) -> some View {
////        ZStack(alignment: .trailing) {
////            content
////
////                .overlay {
////                    if !text.isEmpty {
////                        HStack {
////                            Spacer()
////                            Button(
////                                action: {
////                                    self.text = ""
////                                })
////                            {
////                                Image(systemName: "xmark.circle.fill")
////                                    .foregroundColor(Color(UIColor.opaqueSeparator))
////                            }
////                        }
////                        .padding(.trailing, 4)
////                    }
////                }
////        }
////    }
////}
////
////struct ClearButton: View {
////    @State var money = ""
////
////    var body: some View {
////
////        VStack {
////            TextField("기부할 금액을 입력하세요.", text: $money)
////                .textFieldStyle(.roundedBorder)
////                .modifier(TextFieldClearButton(text: $money))
////                .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
////                .foregroundColor(ColorManager.DonationFont)
////
////        }
////        .padding()
////
////    }
////}
////
////struct donationButton: View {
////    @State private var showingAlert = false
////
////    var body: some View {
////        ZStack {
////            RoundedRectangle(cornerRadius: 10).frame(width: 100, height: 40)
////                .foregroundColor(ColorManager.DonationList)
////
////            Button(action: {
////                self.showingAlert = true
////            }) {
////                Text("기부하기")
////                    .foregroundColor(.white)
////            }
////            .alert(isPresented: $showingAlert) {
////                Alert(title:  Text("기부"), message: Text("기부가 완료되었습니다"))
////
////            }
////        }
////    }
////}
//
////struct donationButton: View {
////
////    @State private var showingAlert = false
////
////    var body: some View {
//////        ZStack {
//////            RoundedRectangle(cornerRadius: 10).frame(width: 100, height: 40)
//////                .foregroundColor(ColorManager.DonationList)
////
////            Button(action: {
////                self.showingAlert = true
////            }) {
////                Text("기부하기")
////            }
////            .alert(isPresented: $showingAlert) {
////
////            }
////        }
////    }
////}
//
//struct DonationList_Previews: PreviewProvider {
//    static var previews: some View {
//        DonationList()
//    }
//}
