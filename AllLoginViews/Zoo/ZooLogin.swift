//
//  ZooLogin.swift
//  AllLoginViews
//
//  Created by Ubrain_iOS2 on 05/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct ZooLogin: View {
    
    @State private var strEmailId:String = ""
    @State private var strPassword:String = ""
    
    var body: some View {
        
        NavigationView() {
            
            ZStack {
                Color(.sRGB,red: 0,green: 0,blue: 0,opacity: 0.1).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("bag")
                        //.padding(.top,30)
                    Text("Zoo")
                        .foregroundColor(Color.COLOR_0_25_51)
                        .font(.title)
                        .fontWeight(.medium)
                    
                    VStack (alignment: .leading){
                        Spacer()
                        Text("Sign in")
                            .font(Font.system(size: 20))
                            .foregroundColor(Color.COLOR_0_25_51)
                            .fontWeight(.medium)
                            .padding(.bottom,50)
                        
                        ZStack (alignment: .leading) {
                            if self.strEmailId.isEmpty {
                                Text("USERNAME").foregroundColor(Color.COLOR_155)
                                    .font(Font.system(size: 14))
                            }
                            TextField("", text: self.$strEmailId)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.COLOR_0_25_51)
                                .keyboardType(.emailAddress)
                        }
                    }
                    .padding(.leading,35)
                    Divider()
                        .padding(.leading,25)
                        .padding(.trailing,25)
                        .padding(.bottom,50)
                    
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
                        LoginButtonContent(title: "Login")
                    }
                    .padding(.top,45)
                    Text("or sign in with:")
                        .foregroundColor(Color.COLOR_0_25_51)
                        .font(Font.system(size: 14))
                        .fontWeight(.medium)
                        .padding()
                    
                    HStack (alignment: .center , spacing: 20) {
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
                    .padding(.top,10)
                    
                    VStack {
                        Spacer()
                        HStack {
                            Button(action: {print("Button tap")}) {
                                
                                NavigationLink(destination: ZooRegister()) {
                                    Text("Don't Have An Account?")
                                        .foregroundColor(Color.COLOR_0_25_51)
                                        .font(Font.system(size: 14))
                                        .fontWeight(.medium)
                                }
                            }
                            Spacer()
                            Button(action: { print("Button tap")}) {
                                Text("Forgot Password")
                                    .foregroundColor(Color.COLOR_0_25_51)
                                    .font(Font.system(size: 14))
                                    .fontWeight(.medium)
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ZooLogin_Previews: PreviewProvider {
    static var previews: some View {
        ZooLogin()
    }
}


struct LoginButtonContent: View {
    
    var title:String
    
    var body: some View {
        Text(title)
            .font(.subheadline)
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 40, height: 45)
            .background(Color.COLOR_0_25_51)
            .cornerRadius(25.0)
    }
}


struct SocialMediaButton: View {
    
    var img:String
    
    var body: some View {
        Image(img)
            .frame(width: 50, height: 50)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 0)
            .accentColor(Color.COLOR_0_25_51)
    }
}



/*
 
 struct ZooLogin: View {
     
     @State private var strEmailId:String = ""
     @State private var strPassword:String = ""
     
     var body: some View {
         
         NavigationView() {
             GeometryReader { geometry in
                 ZStack {
                     Image("introBg")
                         .resizable()
                         .aspectRatio(geometry.size, contentMode: .fill)
                         .edgesIgnoringSafeArea(.all)
                         //.background(Color.blue)
                     
                     Color(.sRGB,red: 0,green: 0,blue: 0,opacity: 0.1).edgesIgnoringSafeArea(.all)
                    // Color.COLOR_0_25_51.edgesIgnoringSafeArea(.all)
                     
                     VStack {
                         Image("bag")
                             //.padding(.top,30)
                         Text("Zoo")
                             .foregroundColor(Color.COLOR_0_25_51)
                             .font(.title)
                             .fontWeight(.medium)
                         
                         VStack (alignment: .leading){
                             Spacer()
                             Text("Sign in")
                                 .font(Font.system(size: 20))
                                 .foregroundColor(Color.COLOR_0_25_51)
                                 .fontWeight(.medium)
                                 .padding(.bottom,50)
                             
                             ZStack (alignment: .leading) {
                                 if self.strEmailId.isEmpty {
                                     Text("USERNAME").foregroundColor(Color.COLOR_155)
                                         .font(Font.system(size: 14))
                                 }
                                 TextField("", text: self.$strEmailId)
                                     .multilineTextAlignment(.leading)
                                     .foregroundColor(Color.COLOR_0_25_51)
                                     .keyboardType(.emailAddress)
                             }
                         }
                         .padding(.leading,35)
                         Divider()
                             .padding(.leading,25)
                             .padding(.trailing,25)
                             .padding(.bottom,50)
                         
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
                             LoginButtonContent(title: "Login")
                         }
                         .padding(.top,45)
                         Text("or sign in with:")
                             .foregroundColor(Color.COLOR_0_25_51)
                             .font(Font.system(size: 14))
                             .fontWeight(.medium)
                             .padding()
                         
                         HStack (alignment: .center , spacing: 20) {
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
                         .padding(.top,10)
                         
                         VStack {
                             Spacer()
                             HStack {
                                 Button(action: {print("Button tap")}) {
                                     
                                     NavigationLink(destination: ZooRegister()) {
                                         Text("Don't Have An Account?")
                                             .foregroundColor(Color.COLOR_0_25_51)
                                             .font(Font.system(size: 14))
                                             .fontWeight(.medium)
                                     }
                                 }
                                 
                                 Spacer()
                                 Button(action: { print("Button tap")}) {
                                     Text("Forgot Password")
                                         .foregroundColor(Color.COLOR_0_25_51)
                                         .font(Font.system(size: 14))
                                         .fontWeight(.medium)
                                 }
                             }
                             .padding()
                         }
                     }
                 }
             }
         }
         .navigationBarTitle(Text("Login"), displayMode: .inline)
         .navigationBarHidden(true)
         //.edgesIgnoringSafeArea([.top])
     }
 }
 
 */
