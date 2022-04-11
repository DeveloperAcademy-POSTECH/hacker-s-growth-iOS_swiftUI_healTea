
import SwiftUI


struct TeaDictionary: View {
    let teaDatas: [TeaData]
   
    var body: some View {
        HStack {
            Text(teaDatas[1].en_name)
        }
    }
}

struct TeaDictionary_Previews: PreviewProvider { 
    static var previews: some View {
        TeaDictionary(teaDatas: TeaData.sampleData)
    }
}
