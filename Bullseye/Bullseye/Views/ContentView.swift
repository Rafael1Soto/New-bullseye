//
//  ContentView.swift
//  Bullseye
//
//  Created by A.M. Student on 1/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 10.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            //rgb(243, 248, 253)
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                VStack {
                    VStack {
                        Text("🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                            .bold()
                            .kerning(2.0)
                            .multilineTextAlignment(.center)
                            .lineSpacing(4.0)
                            .font(.footnote)
                        
                        Text(String(game.target))
                            .fontWeight(.black)
                            .kerning(-1.0)
                            .font(.largeTitle)
                                    
                    }
                    HStack {
                        Text("1")
                            .bold()
                        Slider(value: $sliderValue, in: 1.0...100.0)
                        
                        Text("100")
                            .bold()
                    }
                    .padding()
                    
                    
                    Button(action: {
                        print("Hello SwiftUi")
                        alertIsVisible = true
                    }) {
                        Text("Hit Me".uppercased())
                            .bold()
                            .font(.title3)
                        
                    }
                    .foregroundColor(Color.white)
                    .padding(20.0)
                    .background(Color("ButtonColor"))
                    .cornerRadius(21.0)
                    
                    
                    
                    .alert(isPresented: $alertIsVisible, content: {
                            let roundedValue: Int = Int(sliderValue.rounded())
                            return Alert(title: Text("Hello there!"), message: Text("This slider value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome")))
                        })
                }
                
            }
        }
            
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320 ))
    }
}
}
