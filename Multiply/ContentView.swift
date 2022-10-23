//
//  ContentView.swift
//  Multiply
//
//  Created by Yuriy Khudyk on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Arlington Heights, IL")
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundColor(Color.white)
                    .padding(.top, 100)
                
                
                VStack(spacing: 15) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 250)
                    
                    Text("43°")
                        .font(.system(size: 120, weight: .medium))
                        .foregroundColor(.white)
                    //efwef
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 40) {
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 23)
                    
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: "sun.max.fill",
                                   temperature: 86)
                    
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.fill",
                                   temperature: 41)
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "wind.snow",
                                   temperature: 34)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "tornado",
                                   temperature: 67)
                }
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 56, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 89, height: 76)
            Text("\(temperature)°")
                .font(.system(size: 56, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
