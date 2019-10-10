//
//  ContentView.swift
//  Personal_RGBullsEye
//
//  Created by Francis Breidenbach on 10/9/19.
//  Copyright © 2019 Francis Breidenbach. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  let rTarget = Double.random(in: 0..<1)
  let gTarget = Double.random(in: 0..<1)
  let bTarget = Double.random(in: 0..<1)
  
  @State var rGuess: Double
  @State var gGuess: Double
  @State var bGuess: Double
  
  var body: some View {
    VStack {
      VStack {
        HStack {
          VStack {
            Color(red: rTarget, green: gTarget, blue: bTarget)
            Text("Match this Color")
          }
          VStack {
            Color(red: rGuess, green: gGuess, blue: bGuess)
            Text("R: \(Int(rGuess * 255.0))" + "G: \(Int(gGuess * 255.0))" + "B: \(Int(bGuess * 255.0))")
          }
          
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Hit Me!")
          }
        }
        ColorSlider(value: $rGuess, textColor: .red)
      }
    }
  }
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5).previewLayout(.fixed(width: 568, height: 320))
    }
  }
}

struct ColorSlider: View {
  
  @Binding var value: Double
  
  var textColor: Color
  
  var body: some View {
    HStack {
      Text("0").foregroundColor(textColor)
      Slider(value: $value)
      Text("255").foregroundColor(textColor)
    }.padding(.horizontal)
  }
}
