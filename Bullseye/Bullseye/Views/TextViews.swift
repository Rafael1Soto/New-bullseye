//
//  TextViews.swift
//  Bullseye
//
//  Created by A.M. Student on 1/25/21.
//

import SwiftUI

struct InstructionText: View {
    //@State private var alertIsVisible = false
    //@State private var game = Game()
    //@State private var sliderValue = 10.0
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
        .fontWeight(.black)
        .kerning(-1.0)
        .font(.largeTitle)
        .foregroundColor(Color("TextColor"))
            
    }
    
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
        
    }
    
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            
            HStack {
                SliderLabelText(text: "1")
                SliderLabelText(text: "100")
            }
            
        }
    }
}
