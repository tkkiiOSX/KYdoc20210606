//
//  ContentView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/06/06.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data = Data()
    
    @State var nichiji: Date = Date()

    //@State var nameData: String = ""

    @State var tourokuname: [String] = [
    ]
    @State var nameData: [String] = [
        "岡本太郎",
        "黒澤明"
    ]
    
    
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
                    Text(dateF.string(from: nichiji))
                }
                NameIView(data: data)
                SgyonaiyouView(data: data)
                KikenAridashiView(data: data)
                AnzenTaisakuView(data: data)
            }
            .font(.title)

            .navigationTitle("危険予知＆対策記録")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            let tmp1 = UserDefaults.standard.array(forKey: "DIC_NAME") as? [String]
            let tmp2 = UserDefaults.standard.array(forKey: "NOW_NAME") as? [String]
            if (tmp1 != nil) && (tmp2 != nil) {
                data.dic_name = tmp1!
                data.now_name = tmp2!

            let tmp3 = UserDefaults.standard.array(forKey: "DIC_SAGYO") as? [String]
            let tmp4 = UserDefaults.standard.array(forKey: "NOW_SAGYO") as? [String]
            if (tmp3 != nil) && (tmp4 != nil) {
                    data.dic_sagyo = tmp3!
                    data.now_sagyo = tmp4!
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
