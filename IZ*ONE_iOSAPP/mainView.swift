//
//  mainView.swift
//  IZ*ONE_iOSAPP
//
//  Created by 洪偉倫 on 2021/10/31.
//

import SwiftUI
import UIKit
import SafariServices
let pink = Color(red: 236/255, green: 94/255, blue: 158/255)

struct mainView: View {
    let wallpaper = 8
    var body: some View {
        NavigationView{
            List(){
                Link(destination: URL(string: "https://cafe.daum.net/official-izone/kTv9")!, label: {
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width:100)
                        .animation(.default)
                })
                .buttonStyle(PlainButtonStyle())
                Section(header: CustomHeader1(name: "Group photo")) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack{
                            HStack(spacing: 13){
                                ForEach(1 ..< wallpaper - 3) { (i) in
                                    Image("wallpaper\(i)")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width:390)
                                        .animation(.default)
                                }
                            }
                            .padding(.horizontal,5)
                            HStack(spacing: 13){
                                ForEach(5 ..< wallpaper + 1) { (i) in
                                    Image("wallpaper\(i)")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width:390)
                                        .animation(.default)
                                }
                            }
                            .padding(.horizontal,5)
                        }
                        
                    }
                }
                Section(header: CustomHeader1(name: "RELATION INTRODUCTION")){
                    ForEach(0..<themes.count) { (i) in
                        NavigationLink(destination: themeIntroList(image: themes[i].cover, title: themes[i].title, intro: themes[i].intro, url: themes[i].url)) {
                                        themeList(image: themes[i].image, title: themes[i].title)
                            }
                    }
                }
            }
            .navigationTitle("HOMEPAGE")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct themeList : View {
    var image : String
    var title : String
    
    var body: some View{
        
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 235)
                .clipped()
 
            Group{
                Text(title)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
            }
            .offset(y:-2)
                
        }
        .scaledToFill()
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.pink]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(20)
    }
}

struct themeIntroList : View {
    
    @State private var PhotoShow = false
    @State var show = false
    @State private var rotateDegree: Double = 0
    
    var image : String
    var title : String
    var intro : String
    var url : String
    
    
    var body: some View{
        
        List{
            Image(image)
                .resizable()
                .scaledToFit()
                .scaleEffect(0.8)
                .rotationEffect(.degrees(rotateDegree))
                          .animation(
                            .easeIn(duration: 2)
                          )
                          .onAppear {
                                rotateDegree = 360
                          }
                
            Section(header: CustomHeader1(name: "團體介紹")){
                Text(intro)
                    .padding(10)
                    
                    .font(.system(size: 20))
            }
 
 
            Section(header: CustomHeader1(name: "更多資料")){
                Button(action: {
                        self.show.toggle()
                    }){
                        Image("wiki")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                        Text("WIKI")
                    }
                .sheet(isPresented: $show){
                    SafariView(url:URL(string: url)!)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .navigationTitle(title)
    }
}

struct CustomHeader1: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red: 236/255, green: 94/255, blue: 158/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 390)
            Spacer()
        }.frame(width:410, height: 30)
    }
}

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
            .preferredColorScheme(.light)
    }
}
