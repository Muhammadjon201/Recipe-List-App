

import SwiftUI

struct RecipeListView: View {
    // command
    // Reference the view model
    // bb
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        HStack(spacing: 20){
                            Image(r.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                            
                        }
                    })
               
            }
            .navigationBarTitle("All Recipes").navigationBarTitleDisplayMode(.inline)
        }
            
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
