import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("สวัสดีค่ะ ฉันจะค่อยช่วยเลี้ยงเหล่าลูกแมวน้อยของคุณ")
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .font(.custom("normal01", size: 18))
            
            Text("Hi, I am your child care.")
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .font(.custom("normal01", size: 16))
            
            Spacer().frame(height: 20)
            
            Text("ฉันมีทั้งความบันเทิงและกิจกรรมให้กับแมวน้อย \n รวมถึงการคำนวณดัชนีมวลกาย")
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .font(.custom("normal01", size: 18))
            
            Text("I offer both entertainment and activities for your kitten, \n as well as calculating the body mass index.")
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .font(.custom("normal01", size: 14))
            
            Image("carecat")
                .resizable()
                .scaledToFit()
                .frame(height: 400)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
