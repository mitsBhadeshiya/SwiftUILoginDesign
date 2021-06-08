//
//  WelcomeView.swift
//  AllLoginViews
//
//  Created by Mits on 12/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

// LEFT MENU CODE
//https://www.youtube.com/watch?v=fRauS4cX5dA

import SwiftUI

struct WelcomeView: View {
    
    @State var open = false
    
    var body: some View {
        
        ZStack {
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        
                        self.open.toggle()
                        
                    }, label: {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    })
                }
                Spacer()
            }
            .padding()
            
            Menu(open: $open)
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
        //Menu(open: .constant(true))
    }
}


struct Menu :View {
    
    @Binding var open:Bool
    @State var selectedMenuIndex:Int = 0
    
    @State var menuList = [
        MenuData(id: 0, title: "Home", imgIcon: "house"),
        MenuData(id: 1, title: "Profile", imgIcon: "person"),
        MenuData(id: 2, title: "Followes", imgIcon: "person.3"),
        MenuData(id: 3, title: "Favourites", imgIcon: "heart"),
    ]
    
    var body : some View{
        VStack{
            HStack{
                Image(systemName: "gear")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .frame(width: 40, height: 40)
                
                ZStack {
                    Image("user_profile")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.horizontal, 20)
                    Circle()
                        .stroke(Color.purple)
                        .frame(width: 105, height: 105)
                        .offset(x: -2 , y: -1)
                    Circle()
                        .stroke(Color.green)
                        .frame(width: 105, height: 105)
                        .offset(x: 2 , y: 1)
                }
                Image(systemName: "pencil")
                .foregroundColor(.white)
                .font(.system(size: 25))
                .frame(width: 40, height: 40)
            }
            .padding(.top, 20)
            
            Text("Mits Bhadeshiya")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .padding(.top, 10)
                .padding(.bottom, 40)
            
            
            ForEach(0..<menuList.count) { i in
                if i == self.selectedMenuIndex {
                    Row(rowActive: true, objMenu: self.menuList[i])
                        .onTapGesture {
                            self.selectedMenuIndex = i
                            self.open.toggle()
                    }
                }else{
                    Row(rowActive: false, objMenu: self.menuList[i])
                        .onTapGesture {
                            self.selectedMenuIndex = i
                            self.open.toggle()
                    }
                }
            }
            Spacer()
            Row(rowActive: false , objMenu: MenuData(id: 4, title: "Sign out", imgIcon: "arrow.uturn.left"))
                .onTapGesture {
                    self.open.toggle()
            }
            
        }
        .padding(.vertical, 30)
        .background(LinearGradient(gradient: Gradient(colors: [.blue , .purple]), startPoint: .top, endPoint: .bottom))
        .padding(.trailing, 80)
        .offset(x: open ? 0 : -UIScreen.main.bounds.width)
        .rotation3DEffect(Angle(degrees: open ? 0 : 45 ), axis: (x: 0, y: 20 , z: 0))
        .animation(.default)
        /*.onTapGesture {
            self.open.toggle()
        } */
        .edgesIgnoringSafeArea(.vertical)
        
    }

}

struct Row : View {
    
    var rowActive: Bool
    var objMenu: MenuData
    
    var body: some View {
        HStack {
            Image(systemName: objMenu.imgIcon)
                .foregroundColor(rowActive ? Color.purple : Color.white)
                .font(.system(size: 15, weight: rowActive ? .bold : .medium))
            .frame(width: 40, height: 40)
            Text(objMenu.title)
                .foregroundColor(rowActive ? Color.purple : Color.white)
            .font(.system(size: 15, weight: rowActive ? .bold : .medium))
            Spacer()
        }
        .padding( 4)
        .background(rowActive ? Color.white : Color.white.opacity(0))
        .padding(.trailing , 20)
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .offset(x: 20)
    
    }
}

struct MenuData: Identifiable {
  let id: Int
  let title: String
  let imgIcon: String
}

