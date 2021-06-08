//
//  Common.swift
//  AllLoginViews
//
//  Created by Ubrain_iOS2 on 05/03/20.
//  Copyright © 2020 Ubrain. All rights reserved.
//

import SwiftUI

struct Common: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Common_Previews: PreviewProvider {
    static var previews: some View {
        Common()
    }
}

extension Color {
    
    static let COLOR_155 : Color = color1(red: 155, green: 155, blue: 155, alpha: 1)
    static let COLOR_0_25_51 : Color = color1(red: 0, green: 25, blue: 51, alpha: 1)
    static let COLOR_116_235_213 : Color = color1(red: 116, green: 235, blue: 213, alpha: 1)
    static let COLOR_172_182_229 : Color = color1(red: 172, green: 182, blue: 229, alpha: 1)
    static let COLOR_44_112_115 : Color = color1(red: 44, green: 112, blue: 115, alpha: 1)
    static let COLOR_98_98_98 : Color = color1(red: 98, green: 98, blue: 98, alpha: 1)
    static let COLOR_200: Color = color1(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
}

func color1(red:Double , green:Double , blue:Double , alpha:CGFloat) -> Color {
    return Color(.sRGB,red: (red/255.0),green: (green/255.0),blue: (blue/255.0),opacity: 1)
}
