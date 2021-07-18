//
//  ContentView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/06/06.
//

import SwiftUI

struct ContentView: View {
    
    @State var name1: String = ""
    @State var name2: String = ""
    @State var name3: String = ""
    @State var name4: String = ""
    @State var name5: String = ""
    @State var name6: String = ""
    
    @State var nichiji: Date = Date()
    
    @State var sagyo1: String = ""
    @State var sagyo2: String = ""
    @State var sagyo3: String = ""
    @State var sagyo4: String = ""
    @State var sagyo5: String = ""
    
    @State var kiken1: String = ""
    @State var kiken2: String = ""
    @State var kiken3: String = ""
    @State var kiken4: String = ""
    @State var kiken5: String = ""
    
    @State var anzen1: String = ""
    @State var anzen2: String = ""
    @State var anzen3: String = ""
    @State var anzen4: String = ""
    @State var anzen5: String = ""
    
    @State var sel1 = 0
    @State var sel2 = 0
    @State var sel3 = 0
    @State var sel4 = 0
    @State var sel5 = 0
    @State var sel6 = 0
    
    var dateF: DateFormatter {
        let f = DateFormatter()
        f.dateStyle = .short
        f.timeStyle = .short
        f.locale = Locale(identifier: "ja_JP")
        return f
    }
    
    var body: some View {
        NavigationView {
            Form {
                    HStack {
                        Text("日時")
                            .font(.title)
                        Text(dateF.string(from: nichiji))
                            .padding()
                            .font(.title)
                    }
                    NameIView(name1: $name1, name2: $name2, name3: $name3, name4: $name4, name5: $name5, name6: $name6,

                             sel1: $sel1, sel2: $sel2, sel3: $sel3, sel4: $sel4, sel5: $sel5, sel6: $sel6)

                    SgyonaiyouView(sagyo1: $sagyo1, sagyo2: $sagyo2, sagyo3: $sagyo3, sagyo4: $anzen4, sagyo5: $anzen5)
                    
                    KikenAridashiView(kiken1: $kiken1, kiken2: $kiken2, kiken3: $kiken3, kiken4: $kiken4, kiken5: $kiken5)
                    
                    AnzenTaisakuView(anzen1: $anzen1, anzen2: $anzen2, anzen3: $anzen3, anzen4: $anzen4, anzen5: $anzen5)

                }
            .padding(.all,20)
            .navigationTitle("危険予知＆対策記録")
        }
            
        .navigationViewStyle(StackNavigationViewStyle())
                    
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
