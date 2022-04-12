//
//  userInfo.swift
//  healTea
//
//  Created by eunji on 2022/04/12.
//

import SwiftUI

struct userInfo: View {
    
    var item: [String] = ["이름", "생년월일"]
    var data: [String] = ["가", "2022.01.01"]
    
    @State var nickname: String = "A"
    @State private var showAlert = false
    
    
    var body: some View {NavigationView {
        VStack {
            ForEach (0..<2) { index in
                HStack{
                    Text("\(item[index])")
                        .bold()
                    Spacer()
                    Text("\(data[index])")
                        .fontWeight(.ultraLight)
                }
                .frame(width: 300)
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
            .frame(width: 300)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 16).stroke(Color.gray)
            )
            HStack {
                NavigationLink(destination: DetailView(nickname: $nickname)) {
                    Text("닉네임 수정")
                }
                Button("탈퇴하기") {
                    showAlert=true
                }
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
            .padding(EdgeInsets(top: 10, leading: 180, bottom: 0, trailing:0))

            Spacer()
        } //~VStack
        .navigationTitle("내 정보")

    } // ~NavigationView

} //~body
} //~ myInfoView



struct DetailView: View {
@Binding var nickname: String
@State var changeNick: String = ""
var body: some View {
    //NavigationView {
        VStack{
            HStack {
                Text("닉네임")
                    .bold()
                Spacer()
                TextField("닉네임", text:$changeNick)
                    .multilineTextAlignment(.trailing)
            }
            .frame(width: 300)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
            .padding(EdgeInsets(top:0, leading:0, bottom: 0, trailing: 0))
            Button(action:{
                nickname = changeNick
            }){Text("변경")}
                .padding(EdgeInsets(top: 10, leading: 290, bottom: 0, trailing: 10))
            Spacer()
        //}
        
    } //~NavigationView
    //Button(action: {saveNick()}, label:{Text("저장하기").padding()})
//        Button(action: {
//        }, label: {Text("저장").padding()})

} //~body
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
