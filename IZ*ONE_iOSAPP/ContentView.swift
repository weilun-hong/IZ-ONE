//
//  ContentView.swift
//  IZ*ONE_iOSAPP
//
//  Created by 洪偉倫 on 2021/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            mainView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("HOMEPAGE")
                }
            MemberView()
                .tabItem{
                    Image(systemName: "person.3.fill")
                    Text("MEMBER")
                }
            musicView()
                .tabItem{
                    Image(systemName: "music.quarternote.3")
                    Text("MUSIC")
                }
            moreView()
                .tabItem{
                    Image(systemName: "info.circle.fill")
                    Text("MORE")
                }
        }
        .accentColor(Color(red: 236/255, green: 94/255, blue: 158/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
