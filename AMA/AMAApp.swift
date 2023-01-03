//
//  AMAApp.swift
//  AMA
//
//  Created by Colin Dively on 1/2/23.
//

import SwiftUI

@main
struct AMAApp: App {
    @StateObject var requestModel = RequestModel()
    var body: some Scene {
        WindowGroup {
            ContentView(prompt: $requestModel.prompt)
                .environmentObject(requestModel)
        }
    }
}
