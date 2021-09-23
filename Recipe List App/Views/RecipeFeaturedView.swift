//l
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Muhammadjon Mamarasulov on 9/21/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top,40)
                .font(.largeTitle)
            GeometryReader { geo in
            TabView {
                // Loop through each recipe
                ForEach (0..<model.recipes.count) { index in
                    // Only shows those that should be featured
                    
                    if model.recipes[index].featured == true {
                        
                        //Recipe card
                        ZStack{
                            Rectangle()
                                .foregroundColor(.white)
                                
                            VStack{
                                Image("lasagna")
                                    .resizable()
                                    .clipped()
                                Text("Lasagna")
                                    .padding()
                            }
                        }.frame(width: geo.size.width - 40, height: geo.size.height - 90)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .cornerRadius(15)
                        .shadow(color: .black, radius: 5, x:-2, y:1)
                    }
                    
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
            
            VStack(alignment: .leading, spacing: 10){
                Text("Pereparation Time")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, HEarty")
            }
            .padding()
        }
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
