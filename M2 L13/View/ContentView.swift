//
//  ContentView.swift
//  M2 L13
//
//  Created by Kirill Willer on 09/12/2021.
//

import SwiftUI

struct  RecipeListView: View {
    
    //Reference
    @ObservedObject var model = recipeModel()
    var body: some View {
        NavigationView{
        
            List(model.resepies){ r in
                NavigationLink(destination: RecipeDetale(recipe: r), label:{ HStack(spacing: 16.0){
                    Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    Text(r.name)
                }
                })
            }
            .navigationTitle("All Recipes")
        }
    }
}

struct  RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
