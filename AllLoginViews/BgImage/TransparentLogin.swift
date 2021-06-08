//
//  TransparentLogin.swift
//  AllLoginViews
//
//  Created by Ubrain_iOS2 on 18/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct TransparentLogin: View {
    
    @State private var strEmailId:String = ""
    @State private var strPassword:String = ""
    
    var body: some View {
        
        //NavigationView() {
            GeometryReader { geometry in
                ZStack {
                    Image("coffee")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                    Color(.sRGB,red: 0/255,green: 0/255,blue: 0/255,opacity: 0.8).edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Image("coffee-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                        
                        HStack {
                            Text("Coffee")
                                .foregroundColor(Color.white)
                                .font(Font.system(size: 40))
                                .fontWeight(.bold)
                            Text("Enterprise")
                                .foregroundColor(Color.white)
                                .font(Font.system(size: 40))
                                .fontWeight(.light)
                                .padding(.leading,-10)
                        }
                        //Spacer()
                        .padding(.bottom,60)
                        
                        HStack {
                            Image("User1")
                                .padding(.leading,10)
                            ZStack (alignment: .leading){
                                if self.strEmailId.isEmpty {
                                    Text("Username").foregroundColor(Color.COLOR_155)
                                }
                                TextField("", text: self.$strEmailId)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.white)
                                    .keyboardType(.emailAddress)
                            }
                            .padding(.leading,15)
                            .padding(.leading,-5)
                        }
                        .frame(width: UIScreen.main.bounds.width - 120, height: 40, alignment: .center)
                        self.line
                        
                        HStack {
                            Image("key")
                                .padding(.leading,10)
                            ZStack (alignment: .leading){
                                if self.strPassword.isEmpty {
                                    Text("Password").foregroundColor(Color.COLOR_155)
                                }
                                TextField("", text: self.$strPassword)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.white)
                            }
                            .padding(.leading,15)
                            .padding(.leading,-5)
                        }
                        .frame(width: UIScreen.main.bounds.width - 120, height: 40, alignment: .center)
                        self.line
                        
                        Button(action: {print("Login Button tapped")}) {
                            Text("Login to my account")
                                .font(Font.system(size: 18))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width - 130, height: 50)
                        }
                        .background(
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color(.white) , lineWidth: 1)
                            .shadow(radius: 5))
                        .padding(15)
                        
                        Button(action: {print("Can not access Button tapped")}) {
                            Text("Cannot access your account?")
                                .font(Font.system(size: 14))
                                .foregroundColor(Color.COLOR_155)
                                .fontWeight(.bold)
                        }
                        
                        Spacer()
                        
                        Button(action: {print("New User Button tapped")}) {
                            
                            NavigationLink(destination: TransparentRegister()) {
                                Text("New here? Create an account")
                                    .font(Font.system(size: 14))
                                    .foregroundColor(Color.COLOR_155)
                                    .fontWeight(.bold)
                            }
                        }
                        .padding(20)
                    }
                    .padding(.top,75)
                }
            }
        //}
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
    }
    var line: some View {
        VStack {
            Divider()
                .frame(width: UIScreen.main.bounds.width - 130, height: 1, alignment: .center)
                .background(Color.COLOR_155)
        }
    }
}

struct TransparentLogin_Previews: PreviewProvider {
    static var previews: some View {
        TransparentLogin()
    }
}
