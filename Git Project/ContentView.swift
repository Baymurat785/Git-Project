//
//  ContentView.swift
//  Git Project
//
//  Created by Baymurat Abdumuratov on 09/06/24.
//

import SwiftUI

struct ContentView: View {
    // State variable to hold user input
    @State private var inputText: String = ""
    // State variable to hold displayed text
    @State private var displayedText: String = "Welcome!"

    var body: some View {
        VStack {
            // Title
            Text("Simple SwiftUI App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            // Text field for user input
            TextField("Enter something...", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Button to update the displayed text
            Button(action: {
                displayedText = inputText
            }) {
                Text("Submit")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            // Label to display the entered text
            Text(displayedText)
                .font(.title)
                .padding()
        }
        .padding()
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


