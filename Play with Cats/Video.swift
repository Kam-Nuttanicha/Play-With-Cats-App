import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        // ดึงไฟล์วิดีโอจาก Resources
        if let videoURL = Bundle.main.url(forResource: "catvideo", withExtension: "mp4") {
            // ใช้ AVPlayer เพื่อเล่นวิดีโอ
            VideoPlayer(player: AVPlayer(url: videoURL))
                .frame(height: 245) // กำหนดขนาดให้พอดี
        } else {
            Text("ไม่พบไฟล์วิดีโอ")
                .foregroundColor(.red)
        }
    }
}

struct VideoView: View {
    var body: some View {
        VStack {
            // เพิ่ม VideoPlayerView ที่จะแสดงวิดีโอ
            VideoPlayerView()
                .padding(.top, 20)  // ระยะห่างจากข้อความด้านบน 20
                .padding(.bottom, 10)  // ระยะห่างจากข้อความด้านล่าง 10
            
            // ไม่รองรับการใช้หลายค่าพร้อมกันแบบ CSS (.padding(20, 0, 0, 10))
            
            Text("วิดีโอเพลินๆ ให้น้องแมว")
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .font(.custom("normal01", size: 18))
        }
    }
    
    struct VideoView_Previews: PreviewProvider {
        static var previews: some View {
            VideoView()
        }
    }
}
struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
