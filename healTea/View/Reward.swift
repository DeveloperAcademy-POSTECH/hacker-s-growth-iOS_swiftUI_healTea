//
//  Reward.swift
//  healTea
//
//  Created by Geunil Park on 2022/04/12.
//

import SwiftUI

struct Reward: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State var changeImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    
    var body: some View {
        VStack {
            HStack {
                Button("Camera") {
                    self.sourceType = .camera
                    changeImage = true
                    openCameraRoll = true
                }
                Button("Photo") {
                    self.sourceType = .photoLibrary
                    changeImage = true
                    openCameraRoll = true
                }
            }.padding(.top, 10)
            
            VStack {
                if changeImage {
                    Image(uiImage: imageSelected)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } else {
                    Text("사진을 넣어주세요")
                }
            }
            .padding(.horizontal, 30)
            .frame(width: 330, height: 300, alignment: .center)
            .overlay(RoundedRectangle(cornerRadius: 30.0).stroke(Color.green))
            .background(RoundedRectangle(cornerRadius: 30.0).fill(changeImage ? Color.black : Color.white))
            
            Text("예상 리워드 금액")
                .multilineTextAlignment(.leading)
                .font(.title)
                .frame(width: 320, height: 60, alignment: .leading)
                .padding(.top, 10)
            
            VStack {
                Text("hello")
            }
            .padding(.horizontal, 30)
            .frame(width: 330, height: 250, alignment: .center)
            .overlay(RoundedRectangle(cornerRadius: 30.0).stroke(Color.green))
            Spacer(minLength: 20.0)
        }
        
        .sheet(isPresented: self.$openCameraRoll) {
            ImagePicker(selectedImage: $imageSelected, sourceType: self.sourceType)
        }
    }
}

struct Reward_Previews: PreviewProvider {
    static var previews: some View {
        Reward()
    }
}
