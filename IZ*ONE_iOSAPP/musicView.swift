//
//  musicView.swift
//  IZ*ONE_iOSAPP
//
//  Created by 洪偉倫 on 2021/10/31.
//

import SwiftUI
import UIKit
import AVFoundation
import MediaPlayer

struct musicView: View {
    
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<musics.count) { (i) in
                    NavigationLink(destination: musicIntro(photo: musics[i].photo, name: musics[i].name, intro: musics[i].name)) {
                        musicList(photo: musics[i].photo, name: musics[i].name)
                    }
                }
                    
            }
            .navigationBarTitle("MUSIC")
        }
    }
    
}
struct musicList : View {
    
    var photo : String
    var name : String
    
    var body: some View{
        
        HStack(spacing:20){
            Image(photo)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.black, lineWidth: 2))
                .shadow(radius: 5)
                .offset(x:15)
            
            VStack(alignment:.center){
                Text(name)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
            }.frame(width: 200, height: 30, alignment: .center)
            
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 236/255, green: 94/255, blue: 158/255)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct musicIntro: View{
    
    @State private var musicshow = false
    var photo: String
    var name : String
    var intro :String
    
    var body: some View{
        
        List{
        VStack{
            VStack{
                if musicshow{
                    Image(photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 395, height: 395)
                        .border(Color.black,width:5)
                        .shadow(radius: 15)
                        .transition(.opacity)
                }
  
            }.animation(.linear(duration: 3))
            
            .background(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 236/255, green: 94/255, blue: 158/255)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(10)

            Text(intro)
                .padding(10)
                .font(.system(size: 15))
            
        }
        .navigationTitle(name)
        
        .onAppear {
            self.musicshow = true
        }
        .onDisappear {
            self.musicshow = false
                    
        }
            
        }
        .offset(x: -10, y: 0)
        
        Section(header: CustomHeader3(name: "SONGS")){
            List{
//                ForEach(1..<MusicNames)
                ForEach(0..<MusicNames.count) { (i) in
                    if(MusicNames[i.self].number==1){
                        
                        Music(name: MusicNames[i].name, number: 1)
                    }
                    
                    }

            }
        }
    }
    
}

struct Music : View {
    @State var play = true
    var name : String
    var number:Int
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    
    var body: some View{
        HStack(){
            Button(action: {
                let fileUrl = Bundle.main.url(forResource:name, withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                self.play.toggle()
                if self.play{
                    self.player.pause()
                }
                else{
                    self.player.play()
                }
                commandCenter.playCommand.addTarget { event in
                    if self.player.rate == 0.0 {
                            self.player.play()
                            return .success
                    }
                    return .commandFailed
                }
                                
                self.commandCenter.pauseCommand.addTarget { event in
                    if self.player.rate == 1.0 {
                            self.player.pause()
                            return .success
                    }
                    return .commandFailed
                }
            }){
                Image(systemName: play ? "play.circle.fill" : "pause.circle.fill")
                    .resizable()
                    .frame(width:40,height:40)
                    .foregroundColor(Color(red: 20/255, green: 41/255, blue: 97/255))
            }.buttonStyle(PlainButtonStyle())
            
            
            Text(name)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 20/255, green: 41/255, blue: 97/255))
 
            Spacer()
            
        }
        .padding(10)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 236/255, green: 94/255, blue: 158/255)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(15)
        
    }
}
struct CustomHeader3: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red: 20/255, green: 41/255, blue: 97/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color(red: 1, green: 1, blue: 1))
                Spacer()
            }
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}
struct musicView_Previews: PreviewProvider {
    static var previews: some View {
        musicView()
            
    }
}

