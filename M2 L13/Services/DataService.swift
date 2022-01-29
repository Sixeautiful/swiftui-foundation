//
//  DataService.swift
//  M2 L13
//
//  Created by Kirill Willer on 09/12/2021.
//

import Foundation

class dataService{
    func getLocalData() -> [Recipe] {
        //Parsed local jsin file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else{
            return [Recipe]()
        }
        //if let path = pathString {
        
            let url = URL(fileURLWithPath: pathString!)
        
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do{
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    for r in recipeData {
                        r.id = UUID()
                    }
                    
                    return recipeData
                    
                }
                catch{
                    print(error)
                }
            }
            catch{
                print(error)
            }
       // }
        return [Recipe]()
    }
}
