import SwiftUI

struct GameView: View {
    var allImages = [
        "cat01",
        "cat02",
        "cat03",
        "cat04",
        "cat05",
        "cat06",
        "cat07"
    ]
    
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            
            // Show the image if imageName is not empty
            if !imageName.isEmpty {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 450, height: 450)
            } else {
                Text("สุ่มกิจกรรมเล่นกับน้องแมว \n What activities do you play with your cats?")
                    .font(.custom("normal01", size: 18))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 400, minHeight: 200)
            }
            
            Button("กดเพื่อสุ่มการ์ดกิจกรรม \n RANDOM CARD") {
                imageName = allImages.randomElement() ?? "cat1"
            }
            .frame(width: 200.0, height: 100.0)
            
            Text("")
                .foregroundColor(.black)
                .font(.body)
        }
        .padding()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

