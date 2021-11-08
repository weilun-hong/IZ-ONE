//
//  MemberView.swift
//  IZ*ONE_iOSAPP
//
//  Created by 洪偉倫 on 2021/11/5.
//

import SwiftUI

struct MemberView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<members.count) { (i) in
                    NavigationLink(destination: memberIntro(photo: members[i].photo, name: members[i].ChineseName, /*name: members[i].KoreanName,*/intro: members[i].intro)) {
                        memberList(photo: members[i].photo, ChineseName: members[i].ChineseName, KoreanName: members[i].KoreanName)
                    }
                }
                    
            }
            .navigationBarTitle("MEMBER INTRODUTION")
        }
    }
}

struct memberList : View {
    
    var photo : String
    var ChineseName : String
    var KoreanName : String
    
    var body: some View{
        
        HStack(spacing:20){
            Image(photo)
                .resizable()
                .scaledToFit()
                .frame(width: 110, height: 125)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.pink, lineWidth: 3))
                .shadow(radius: 5)
                .offset(x:5)
            
            VStack(alignment:.center){
                Text(ChineseName)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(KoreanName)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }.frame(width: 165, height: 30, alignment: .center)
            
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 236/255, green: 94/255, blue: 158/255)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct memberIntro: View{
    
    @State private var membershow = false
    var photo: String
    var name : String
    var intro :String
    
    var body: some View{
        VStack{
            VStack{
                if membershow{
                    Image(photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .border(Color.black,width:5)
                        .shadow(radius: 15)
                        .transition(.opacity)
                }
                /*
                 ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 13){
                        ForEach(1 ..< photo +1) { (i) in
                            Image("photo\(i)")
                                .resizable()
                                .scaledToFill()
                                .frame(width:390)
                                .animation(.default)
                                .shadow(radius: 15)
                                .transition(.opacity)
                        }
                    }
                    .padding(.horizontal,5)
                 }
                 */
                
            }.animation(.linear(duration: 3))
            
            .background(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 236/255, green: 94/255, blue: 158/255)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(10)

            Text(intro)
                .padding(10)
                .font(.system(size: 15))
        }
        .navigationTitle(name)
        
        .onAppear {
            self.membershow = true
        }
        .onDisappear {
            self.membershow = false
                    
        }
        
    }
    
}
struct MemberView_Previews: PreviewProvider {
    static var previews: some View {
        MemberView()
    }
}
