//
//  RecipeModels.swift
//  Recipe List App
//
//  Created by Muhammadjon Mamarasulov on 9/14/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // Create an instance data service and get the data
        self.recipes = DataService.getLocalData()
        
    }
    
}
