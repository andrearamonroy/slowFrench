//
//  Main.swift
//  slowFrench
//
//  Created by Andrea on 6/25/22.
//


import Foundation


class French: ObservableObject {
    //whenever an object with a property marked @Published is changed, all views using that object will be reloaded to reflect those changes.
    @Published private(set) var frenchData = [Level]()
    
    
    init() {
        load()
    }
    func load() {
        let path = Bundle.main.path(forResource: "french", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        
        
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            do {
                if let data = data {
                    let frenchData = try JSONDecoder().decode([Level].self, from: data)
                    //send it back
                  
                    
                    DispatchQueue.main.sync {
                        self.frenchData = frenchData}
                } else {
                    print("no data")
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}




/*
let frenchData: [Level] = load("french.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
*/
