//
//  ContentView.swift
//  Reader
//
//  Created by Chaim Finkelman on 5/3/20.
//  Copyright © 2020 Chaim Finkelman. All rights reserved.
//
import Cocoa
import SwiftUI
import AVFoundation


struct ContentView: View {
    func saySomething (txt: String){
        let utterance = AVSpeechUtterance(string: txt)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance.rate = 100.0
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    var body: some View {
        saySomething(txt: "This is a test")
        return Text("Hello world")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
