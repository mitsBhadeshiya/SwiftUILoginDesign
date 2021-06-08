//
//  TransparentRegister.swift
//  AllLoginViews
//
//  Created by Ubrain_iOS2 on 18/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct TransparentRegister: View {
    
    @State private var strEmailId:String = ""
    @State private var strPassword:String = ""
    @State private var strUserName:String = ""
    
    @State private var isNavigationBarHidden = true
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                Image("coffee")
                    .resizable()
                    .aspectRatio(geometry.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                Color(.sRGB,red: 0/255,green: 0/255,blue: 0/255,opacity: 0.8).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
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
                        Spacer()
                    }
                    
                    HStack {
                        Image("User1")
                            .padding(.leading,10)
                        ZStack (alignment: .leading){
                            if self.strUserName.isEmpty {
                                Text("Username").foregroundColor(Color.COLOR_155)
                            }
                            TextField("", text: self.$strUserName)
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
                        Image("at")
                            .padding(.leading,10)
                        ZStack (alignment: .leading){
                            if self.strEmailId.isEmpty {
                                Text("Email Id").foregroundColor(Color.COLOR_155)
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
                    
                    VStack {
                        Button(action: {print("Sign In Button tapped")}) {
                            Text("Sign In")
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
                        Spacer()
                        
                        HStack {
                            Text("By joining you agree to our")
                                .font(Font.system(size: 14))
                                .foregroundColor(Color.COLOR_155)
                                .fontWeight(.bold)
                            
                            Button(action: {print("Terms & Privacy Policy Clicked")}) {
                                Text("Terms & Privacy Policy")
                                    .font(Font.system(size: 14))
                                    .foregroundColor(Color.COLOR_155)
                                    .fontWeight(.bold)
                                    .padding(.leading,-5) 
                            }
                        }
                        .padding(.top,20)
                    }
                }
                .padding(.top,75)
            }
        }
        .navigationBarHidden(isNavigationBarHidden)
        .onAppear {
            self.isNavigationBarHidden = true
        }
        .onDisappear {
            self.isNavigationBarHidden = false
        }
    }
    
    var line: some View {
        VStack {
            Divider()
                .frame(width: UIScreen.main.bounds.width - 130, height: 1, alignment: .center)
                .background(Color.COLOR_155)
        }
    }
}

struct TransparentRegister_Previews: PreviewProvider {
    static var previews: some View {
        TransparentRegister()
    }
}
