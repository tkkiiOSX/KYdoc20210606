//
//  CustomViewMain.swift
//  KYdoc20210606
//
//  Created by Tadahiro Kato on 2021/07/03.
//

import SwiftUI

struct CustomViewMain: View {
        
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
                    Section(header: Text("A").font(.title)) {
                        Text("A")
                    }
                    CustomViewSub1()
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }

struct CustomViewMain_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewMain()
    }
}
