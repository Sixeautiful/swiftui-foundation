//
//  RecipeDetale.swift
//  M2 L13
//
//  Created by Kirill Willer on 14/12/2021.
//

import SwiftUI

struct RecipeDetale: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                // MARK: Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                // MARK: ingredients
                VStack(alignment: .leading){
                    Text("Ingredients:")
                        .font(.headline)
                        .padding(.bottom, 5.0)
                    ForEach(recipe.ingredients, id:\.self){ item in
                        Text("• " + item)
                            .padding(.bottom, 1)
                    }
                }
                .padding(.horizontal)
                // MARK: Divider
                Divider()
                // MARK: Direction
                VStack(alignment: .leading){
                    Text("Direction:")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                    ForEach(0..<recipe.directions.count, id:\.self){ index in
                        Text(String(index + 1) + ". " + recipe.directions[index])
                            //.padding(.bottom, 1)
                    }
                }.padding(.horizontal)
            } // vstack main
            
       
        } // ScrollView
        .navigationTitle(recipe.name)
    }
}

struct RecipeDetale_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create  dummy recipe and pase it into detale view so that we can see a preview
        
        let model = recipeModel()
        
        RecipeDetale(recipe: model.resepies[0])
    }
}
