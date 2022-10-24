//
//  ContentView.swift
//  Multiply
//
//  Created by Yuriy Khudyk on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
            CityTextView(cityName: "Arlington Heights, IL")
                
                MainWeatherSatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 43)
                
                HStack(spacing: 100) {
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 23)
                    
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: isNight ? "moon.stars.fill" : "sun.max.fill",
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
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                   textColor: .blue,
                                   backgroundColor: .white)
                    
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
                .font(.system(size: 27, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 46, height: 76)
            Text("\(temperature)°")
                .font(.system(size: 27, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 50, weight: .bold, design: .default))
            .foregroundColor(Color.white)
            .padding(.top, 100)
    }
}

struct MainWeatherSatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 250)
            
            Text("\(temperature)º")
                .font(.system(size: 120, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 20)
    }
}
