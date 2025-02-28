import SwiftUI

struct ContentView: View {
    init() {
            // เปลี่ยนสีของ TabBar เป็นสีเทาฟ้า
        UITabBar.appearance().backgroundColor = UIColor(red: 0.75, green: 0.85, blue: 0.9, alpha: 1.0) // สีเทาฟ้าอ่อน

        }
    
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                GameView()
                    .tabItem {
                        Label("Activity", systemImage: "gamecontroller")
                    }
                VideoView()
                    .tabItem {
                        Label("Video", systemImage: "heart")
                    }
            }
            .navigationTitle("Care Cats")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
