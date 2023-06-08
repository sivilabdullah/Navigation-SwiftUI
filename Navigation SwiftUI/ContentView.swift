//
//  ContentView.swift
//  Navigation SwiftUI
//
//  Created by abdullah's Ventura on 8.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
   
            NavigationStack{
                List {
                    
                    
                    
                    Section("Sports Car"){
                        ForEach(sportCar){ car in
                            NavigationLink(car.name, value: car)

                            
                        }
                        
                    }.foregroundColor(.black)
                    
                    
                    
                    
                    Section("Classic Car"){
                        ForEach(classicCar){ car in
                            NavigationLink(car.name, value: car)
                            
                        }
                    }.foregroundColor(.black)
                }.navigationDestination(for: SportCar.self) { car in
                    Text(car.name)
                }
                .navigationDestination(for: ClassicCar.self) { car in
                    Text(car.name)
                }
            }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
