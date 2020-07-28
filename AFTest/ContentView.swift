//
//  ContentView.swift
//  AFTest
//
//  Created by addjn on 28/07/20.
//  Copyright © 2020 pstw._. All rights reserved.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
        .onAppear(perform: getData)
    }
    func getData() {
        let request = AF.request("https://api.kawalcorona.com/indonesia/")
        request.responseJSON { (data) in
            print(data)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
