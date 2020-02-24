//
//  ContentView.swift
//  JSON
//
//  Created by Tyler Kitchens on 2/17/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI
import Foundation
import Combine

struct NESTED: View {
    @ObservedObject var studentInfo = GetData2()
    var body: some View {
        List(studentInfo.students){
            student in
            VStack(alignment: .leading){
                Text(student.name + " " + student.lastName ).font(.title)
                Text(student.fact)
            }
            
        }
        
    }
}


struct NESTED_Previews: PreviewProvider {
    static var previews: some View {
        NESTED()
    }
}

struct DataLayout2: Codable, Identifiable{
    public var id: String
    public var meta: NSDictionary
    
    enum CodingKeys: String, CodingKey{
        case id = "id"
        case meta = "meta"
      
    }
}

public class GetData2: ObservableObject{
    @Published var students = [DataLayout]()
    init(){
        load()
    }
    func load(){
        let dataUrl = URL(string: "https://farmx.mynmi.net/demo/wp-json/wp/v2/posts")
        let decoder = JSONDecoder()
        URLSession.shared.dataTask(with: dataUrl!) {(data,response, error) in
            do {
                if let d = data {
                    let decodedLists = try decoder.decode([DataLayout].self, from: d)
                    DispatchQueue.main.async{
                        self.students = decodedLists
                        
                    }
                }
                else{
                    print("NO DATA")
                }}catch{
                    print("ERROR")
            }
        }.resume()
    }
}


