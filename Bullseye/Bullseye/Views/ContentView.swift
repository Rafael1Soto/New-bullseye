//
//  ContentView.swift
//  Bullseye
//
//  Created by A.M. Student on 1/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var game = Game()
    @State private var sliderValue = 10.0
    
    var body: some View {
        ZStack {
            //rgb(243, 248, 253)
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                VStack {
                    
                    InstructionsView(game: $game)
                    
                    SliderView(sliderValue: $sliderValue)
                    
                    HitMeButton(alertIsVisible: $alertIsVisible, game: $game, sliderValue: $sliderValue)
                                                    }
                
                }
                
            }
        }
            
    }

    struct InstructionsView: View {
        @Binding var game: Game
        
        var body: some View{
            VStack {
                InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
                
                
                BigNumberText(text: String(game.target))
            }
        }
    }

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View{
        HStack {
            SliderLabelText(text: "1")
            
            Slider(value: $sliderValue, in: 1.0...100.0)
            
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var game: Game
    @Binding var sliderValue: Double
    
    var body: some View {
        
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
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                                        })
        .cornerRadius(21.0)
        .alert(isPresented: $alertIsVisible, content: {
                let roundedValue: Int = Int(sliderValue.rounded())
                return Alert(title: Text("Hello there!"), message: Text("This slider value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome")))
            })
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320 ))
        
        ContentView()
            .preferredColorScheme(.dark)
        
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320 ))
    }
}

