//
//  userInfo.swift
//  healTea
//
//  Created by eunji on 2022/04/12.
//

import SwiftUI

struct userInfo: View {
    
    @State var nickname: String = "healTea"
    @State private var showAlert = false
    
    var item: [String] = ["이름", "생년월일"]
    var data: [String] = ["힐티", "2022.01.01"]
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .trailing, spacing: 15){
                
                ForEach (0..<2) { index in
                    HStack{
                        Text("\(item[index])")
                            .bold()
                        Spacer()
                        Text("\(data[index])")
                            .fontWeight(.ultraLight)
                    }
                    .frame(width: 300, height: 10)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 16).stroke(Color.gray)
                    ).background(RoundedRectangle(cornerRadius: 16).fill(Color.gray.opacity(0.3)))
                }
                
                HStack {
                    Text("닉네임")
                        .bold()
                    Spacer()
                    Text(nickname)
                        .fontWeight(.ultraLight)
                }
                .frame(width: 300, height: 10)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 16).stroke(Color.gray))

                
                HStack {
                    NavigationLink(destination: DetailView(
                        nickname: $nickname)
                    ) {
                        Text("닉네임 수정")
                            .font(.system(size: 14))
                    }
                    .frame(width: 80, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(ColorManager.DonationBar_2))
                    .background(RoundedRectangle(cornerRadius: 10).fill(ColorManager.DonationBar_2))
                    
                    Button("탈퇴하기") {
                        showAlert=true
                    }
                    .font(.system(size: 14))
                    .frame(width: 80, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(ColorManager.DonationBar_2))
                    .background(RoundedRectangle(cornerRadius: 10).fill(ColorManager.DonationBar_2))
                    .alert(isPresented: $showAlert){
                        Alert(
                            title: Text("탈퇴하시겠습니까?"),
                            message: Text("탈퇴시, 탈퇴 버튼을 눌러주세요."),
                            primaryButton: .default(
                                Text("탈퇴")
                            ),
                            secondaryButton: .cancel(Text("취소"))
                        )
                    }
                }
                .foregroundColor(.white)

                Spacer()
                
            }
            .navigationBarTitle("내 정보")
            .navigationBarHidden(true)
        }
        .padding(.top)
    }
        
}

struct DetailView: View {

    @Binding var nickname: String
    @State var changeNick: String = ""
    @State private var showingAlert = false
    
    var body: some View {
        
        VStack(alignment:.trailing){
            HStack{
                Text("닉네임")
                    .bold()
                Spacer()
                TextField("새로운 닉네임", text:$changeNick)
                    .multilineTextAlignment(.trailing)
                
            }
            .frame(width: 300, height: 10)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
            
            Button(action:{
                nickname = changeNick
                self.showingAlert.toggle()
            }){Text("변경")}
                .font(.system(size: 14))
                .frame(width: 80, height: 30)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(ColorManager.DonationBar_2))
                .background(RoundedRectangle(cornerRadius: 10).fill(ColorManager.DonationBar_2))
                .foregroundColor(.white)
                .alert(isPresented: $showingAlert) {
                    Alert (title: Text("닉네임 변경 완료"), message: nil,
                           dismissButton: .default(Text("확인")))
                }
            Spacer()
            
        }
    }
}



struct MyAlert: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            Text("Enter Input")
                .font(.headline)
                .padding()
            TextField("여기에 입력", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()
            Divider()
            HStack{
                Spacer()
                Button(action: {
                    UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
                }){
                    Text("Done")
                }
                
                Spacer()
                Button(action: {
                    UIApplication.shared.windows[0].rootViewController?
                        .dismiss(animated: true, completion: {})
                }) {
                    Text("Cancel")
                }
                Spacer()
            }.padding()
                .background(Color(white: 0.9))
        }
        .frame(width: 200, height:60)
    }
}


struct userInfo_Previews: PreviewProvider {
    static var previews: some View {
        userInfo()
    }
}
