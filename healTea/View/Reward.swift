import SwiftUI

struct Reward: View {
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State var changeImage = false
    @State var openCameraRoll = false
    @State var isCamera = false
    @State var isPhoto = false
    @State var imageSelected = UIImage()
    @State private var myMoney = UserDefaults.standard.integer(forKey: "MyMoney")
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            HStack {
                Button("Camera") {
                    self.sourceType = .camera
                    changeImage = true
                    openCameraRoll = true
                    isCamera = true
                    isPhoto = false
                }
                .foregroundColor(.white)
                .padding(.horizontal, 50)
                .padding(.vertical, 10)
                .background(isCamera ? Color.green : .gray)
                .cornerRadius(15)

                Button("Photo") {
                    self.sourceType = .photoLibrary
                    changeImage = true
                    openCameraRoll = true
                    isPhoto = true
                    isCamera = false
                }
                .foregroundColor(.white)
                .padding(.horizontal, 55)
                .padding(.vertical, 10)
                .background(isPhoto ? Color.green : .gray)
                .cornerRadius(15)
            }.padding(.top, 10)
            
            VStack {
                if changeImage {
                    Image(uiImage: imageSelected)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } else {
                    Text("사진을 넣어주세요")
                        .foregroundColor(.black)
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
                .foregroundColor(.black)
            
            VStack {
                HStack {
                    Text("현재 나의 온도")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer()
                    Text("\(myMoney) 원")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }
                HStack {
                    Text("예상 추가 리워드 금액")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer()
                    Text("5 원")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }
                HStack {
                    Text("나의 예상 온도")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer()
                    Text("\(myMoney + 5) 원")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }
                .padding(.top, 20)
                HStack {
                    Spacer()
                    Button("리워드 받기") {
                        if changeImage {
                            self.myMoney += 5
                            UserDefaults.standard.set(self.myMoney, forKey: "MyMoney")
                        } else {
                            showAlert = true
                        }
                    }
                    .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("사진이 없습니다."),
                                message: Text("영수증 사진을 가져와주세요.")
                            )
                        }
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(Color.green)
                    .cornerRadius(15)
                }
                .padding(.top, 20)
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
