//
//  RequestModel.swift
//  AMA
//
//  Created by Colin Dively on 1/2/23.
//

import Foundation
import SwiftUI

//to access the OpenAI API we need to:
//1). Make HTTP requests using the POST method
//2). As part of the request, incorporate a payload of JSON that contains the prompt and any other parameters
//3). I will also need a Response struct that I can parse in return from the API


class RequestModel: ObservableObject {
    let apiKey: String = "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"
    @State var prompt: String = ""
    let url: URL = URL(string: "https://api.openai.com/v1/completions")!

    func clear() {
        self.prompt = ""
    }
    
    func submit() {
        self.generateResponse()
    }
    
    func generateResponse() {
    }
}
