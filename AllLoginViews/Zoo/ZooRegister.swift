//
//  ZooRegister.swift
//  AllLoginViews
//
//  Created by Ubrain_iOS2 on 05/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct ZooRegister: View {
    
    @State private var strEmailId:String = ""
    @State private var strPassword:String = ""
    @State private var strUserName:String = ""
    
    var body: some View {
        
        ZStack {
            Color(.sRGB,red: 0,green: 0,blue: 0,opacity: 0.1).edgesIgnoringSafeArea(.all)
            VStack {
                VStack (alignment: .leading){
                    
                    HStack {
                        Image("bag")
                        Spacer()
                        Text("Signin")
                            .underline()
                            .foregroundColor(Color.COLOR_0_25_51)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .padding(.trailing,35)
                    }
                    
                    Text("Create new account")
                        .font(Font.system(size: 20))
                        .foregroundColor(Color.COLOR_0_25_51)
                        .fontWeight(.medium)
                        .padding(.bottom,50)
                        .padding(.top,50)
                    
                    ZStack (alignment: .leading) {
                        if self.strUserName.isEmpty {
                            Text("USERNAME").foregroundColor(Color.COLOR_155)
                                .font(Font.system(size: 14))
                        }
                        TextField("", text: self.$strUserName)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.COLOR_0_25_51)
                            .keyboardType(.emailAddress)
                    }
                }
                .padding(.leading,35)
                Divider()
                    .padding(.leading,25)
                    .padding(.trailing,25)
                    .padding(.bottom,30)
                
                VStack (alignment: .leading){
                    
                    ZStack (alignment: .leading) {
                        if self.strPassword.isEmpty {
                            Text("PASSWORD").foregroundColor(Color.COLOR_155)
                                .font(Font.system(size: 14))
                        }
                        TextField("", text: self.$strPassword)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.COLOR_0_25_51)
                            .keyboardType(.emailAddress)
                    }
                }
                .padding(.leading,35)
                Divider()
                    .padding(.leading,25)
                    .padding(.trailing,25)
                    .padding(.bottom,30)
                
                VStack (alignment: .leading){
                    
                    ZStack (alignment: .leading) {
                        if self.strPassword.isEmpty {
                            Text("PASSWORD").foregroundColor(Color.COLOR_155)
                                .font(Font.system(size: 14))
                        }
                        TextField("", text: self.$strPassword)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.COLOR_0_25_51)
                            .keyboardType(.emailAddress)
                    }
                }
                .padding(.leading,35)
                Divider()
                    .padding(.leading,25)
                    .padding(.trailing,25)
                
                Button(action: {print("Login Button tapped")}) {
                    LoginButtonContent(title: "Signup")
                }
                .padding(.top,45)
                
                VStack {
                    Spacer()
                    HStack (alignment: .center , spacing: 20) {
                        
                        //Spacer()
                        Text("or sign in with:")
                            .foregroundColor(Color.COLOR_0_25_51)
                            .font(Font.system(size: 14))
                            .fontWeight(.medium)
                        
                        Button(action: {print("FB Button tapped")}) {
                            SocialMediaButton(img: "facebook")
                        }
                        Button(action: {print("FB Button tapped")}) {
                            SocialMediaButton(img: "google-plus")
                        }
                        Button(action: {print("FB Button tapped")}) {
                            SocialMediaButton(img: "twitter")
                        }
                    }
                    .padding(.bottom,30)
                    
                    Text("By Signing up you agree with our terms and conditions")
                        .foregroundColor(Color.COLOR_155)
                        .font(Font.system(size: 10))
                        .fontWeight(.medium)
                }
                .padding()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ZooRegister_Previews: PreviewProvider {
    static var previews: some View {
        ZooRegister()
    }
}


