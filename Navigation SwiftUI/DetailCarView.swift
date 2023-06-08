//
//  DetailCarView.swift
//  Navigation SwiftUI
//
//  Created by abdullah's Ventura on 8.06.2023.
//

import SwiftUI

struct DetailCarView: View {
    @State var path : [SportCar] = []
    var body: some View {
       
        NavigationStack(path: $path){
            List(sportCar){car in
                NavigationLink(car.name, value: car)
            }.navigationDestination(for: SportCar.self) { car in
                
                VStack{
                    
                    Text(car.name)
                    Button("go Back") {
                        //pop root view controller
                        self.path = [sportCar[1],sportCar[0]]
                    }
                }
            }
        }
    }
}

struct DetailCarView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCarView()
    }
}
