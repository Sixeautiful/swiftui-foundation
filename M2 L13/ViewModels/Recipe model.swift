//
//  Recipe model.swift
//  M2 L13
//
//  Created by Kirill Willer on 09/12/2021.
//

import Foundation
class recipeModel: ObservableObject{
    
    @Published var resepies = [Recipe]()
    
    init(){
        self.resepies = dataService().getLocalData()
    }
}
