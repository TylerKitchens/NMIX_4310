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

struct ContentView: View {

    //State Variable to change the value of the text field

    @State var data2 = "test"

    

    var body: some View {

        Text(data2).onAppear{

            //componentDidMount

            self.load()

        }

        

    }

    

    //function to pull the data

    func  load() {

        let dataUrl = URL(string: "https://farmx.mynmi.net/demo/wp-json/wp/v2/posts")

             let decoder = JSONDecoder()

      

       URLSession.shared.dataTask(with: dataUrl!) {(data,response, error) in

           do {

               if let d = data {

                let decodedLists = try decoder.decode([Container].self, from: d)

           //update the state var

               self.data2 = decodedLists[0].guid.rendered!

                

                //self.data2 = decodedLists[0].date

                //this is how you access other fields

               }

               else{

                   print("NO DATA")

               }}catch{

                //instead of printing generic error, this helped debug

                   print(error)

           }

       }.resume()

        

      

        

    }

}

//essentially a container for the whole json, did not need to write all fields as you get the idea

struct Container: Codable {

    var id: Int

    var date: String

    var date_gmt: String

    

    /*

     if guid had been an array instead put in brackets to access this

     and make sure to modify the Nest Struct to reflect

    var guid: [Result]

     */

    var guid: Nest

    //if the var name is the same as the key in the JSON we dont need to add ="value"

    enum CodingKeys: String, CodingKey {

        case id

        case date

        case date_gmt

        case guid

    }

}

//essentially keep making these nest as far as the JSON dives

struct Nest: Codable {

    var rendered: String?

    

    enum CodingKeys: String, CodingKey {

        case rendered

    }

}
