//
//  ContentView.swift
//  AMA
//
//  Created by Colin Dively on 1/2/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var requestModel: RequestModel
    @Binding var prompt: String
    
    var body: some View {
        VStack {
            Image(systemName: "command.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                .frame(width: 200, height: 200)
            Text("Enter Your Question Below")
                .font(.headline)
                .padding()
            TextField("ChatGPT", text: $prompt, prompt: Text("Request For Information"))
                .font(.custom("sans-serif", size: 15.0))
                .multilineTextAlignment(.leading)
                .padding()
                .textFieldStyle(.roundedBorder)
                .foregroundColor(.black)
                .shadow(radius: 10.0)

            HStack {
                Button("Clear") { requestModel.clear() }
                    .padding()
                Spacer()
                Button("Submit") { requestModel.submit() }
                    .border(.black, width: 1.0)
                    .buttonBorderShape(.roundedRectangle)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    @State var prompt: String = "Help Me"
    static var previews: some View {
        ContentView(prompt: .constant("Help I Have become Sentient"))
            .environmentObject(RequestModel())
    }
}
