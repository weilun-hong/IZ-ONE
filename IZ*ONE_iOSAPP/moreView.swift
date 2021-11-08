//
//  moreView.swift
//  IZ*ONE_iOSAPP
//
//  Created by 洪偉倫 on 2021/10/31.
//

import SwiftUI
import SafariServices

struct moreView: View {
    var body: some View {
        NavigationView{
            List(){
                Section(header: CustomHeader2(name: "其他資源")) {
                    HStack{
                        Link(destination: URL(string: "https://www.youtube.com/channel/UCe_oTYByLWQYCUmgmOMU_xw")!, label: {
                            VStack {
                                Image("youtube")
                                    .resizable()
                                    .scaledToFit()
                                    .offset(y: -5)
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                        Link(destination: URL(string: "https://www.facebook.com/izoneslay")!, label: {
                            VStack {
                                Image("facebook")
                                    .resizable()
                                    .scaledToFit()
                                    .scaleEffect(1.4)
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                        Link(destination: URL(string: "https://twitter.com/official_izone")!, label: {
                            VStack {
                                Image("twitter")
                                    .resizable()
                                    .scaledToFit()
                            }
                        })
                    }
                }
                Section(header: CustomHeader2(name: "Change  Icon")){
                    HStack {
                        Button(action: {
                            UIApplication.shared.setAlternateIconName(nil)
                        }) {
                            Image("icon0")
                                .resizable()
                                .scaledToFit()
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                                UIApplication.shared.setAlternateIconName("icon1")
                        }) {
                            Image("icon1")
                                .resizable()
                                .scaledToFit()
                            }.buttonStyle(PlainButtonStyle())
                                
                        Button(action: {
                            UIApplication.shared.setAlternateIconName("icon2")
                        }) {
                            Image("icon2")
                                .resizable()
                                .scaledToFit()
                            }.buttonStyle(PlainButtonStyle())
                    }
                }

            }
            .navigationBarTitle("MORE INFORMATION")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CustomHeader2: View {
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
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}
struct moreView_Previews: PreviewProvider {
    static var previews: some View {
        moreView()
    }
}
