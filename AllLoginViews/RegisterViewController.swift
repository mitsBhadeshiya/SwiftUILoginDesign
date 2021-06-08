//
//  RegisterViewController.swift
//  AllLoginViews
//
//  Created by Mits on 27/02/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct RegisterViewController: View {
    
    @State private var strFirstName:String = ""
    @State private var strLastName:String = ""
    @State private var strEmailId:String = ""
    @State private var strPassword:String = ""
    
    @State private var isLoading:Bool = false
    
    var body: some View {
        
        ZStack {

            VStack{
                
                Button(action: {
                }, label: {
                    HStack {
                        //Text("Register")
                        Image("arrow.left")
                    }
                    .frame(minWidth: 0, maxWidth: 60)
                    .padding()
                    .font(.body)
                })
                
                
                Spacer()
                Text("Register")
                    .font(Font.system(size: 25))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                
                ZStack {
                  if strFirstName.isEmpty {
                      Text("First Name").foregroundColor(.white)
                  }
                  TextField("", text: $strFirstName)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .padding(12)
                      .background(
                          RoundedRectangle(cornerRadius: 5)
                              .strokeBorder(Color(.white) , lineWidth: 0.5))
                }
                
                ZStack {
                  if strLastName.isEmpty {
                      Text("First Name").foregroundColor(.white)
                  }
                  TextField("", text: $strLastName)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .padding(12)
                      .background(
                          RoundedRectangle(cornerRadius: 5)
                              .strokeBorder(Color(.white) , lineWidth: 0.5))
                }
                
                ZStack {
                  if strEmailId.isEmpty {
                      Text("Your Email").foregroundColor(.white)
                  }
                  TextField("", text: $strEmailId)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .keyboardType(.emailAddress)
                      .padding(12)
                      .background(
                          RoundedRectangle(cornerRadius: 5)
                              .strokeBorder(Color(.white) , lineWidth: 0.5))
                }
                
                ZStack {
                  if strPassword.isEmpty {
                      Text("Password").foregroundColor(.white)
                  }
                  TextField("", text: $strPassword)
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .keyboardType(.emailAddress)
                      .padding(12)
                    .background(
                    RoundedRectangle(cornerRadius: 5)
                        .strokeBorder(Color(.white) , lineWidth: 0.5))
                }
                
                Button(action: {
                    
                    self.isLoading = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.hideLoading()
                    }
                    
                }, label: {
                    HStack {
                        Text("Register")
                        
                        if self.isLoading {
                            ActivityIndicator(isAnimating: .constant(true), style: .medium)
                                .colorMultiply(.white)
                        }
                        
                    }
                    .frame(minWidth: 0, maxWidth: 150)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(40)
                    .foregroundColor(Color.gray)
                    .font(.body)
                })
                Spacer()
                
            }.padding()
            
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color("colorBlue1"), Color("colorBlue2")]), startPoint: .top, endPoint: .bottom))
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    func hideLoading()
    {
        isLoading = false
    }
    
}

struct RegisterViewController_Previews: PreviewProvider {
    static var previews: some View {
        RegisterViewController()
    }
}
