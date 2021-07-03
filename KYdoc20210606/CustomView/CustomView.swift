//
//  CustomView.swift
//  KYdoc20210606
//
//  Created by Tadahiro Kato on 2021/07/03.
//

import SwiftUI

struct CustomView: View {
    @State var kiken1 = ""
    @State var kiken2 = ""
    @State var kiken3 = ""
    @State var kiken4 = ""
    @State var kiken5 = ""
    @State var taisaku1 = ""
    @State var taisaku2 = ""
    @State var taisaku3 = ""
    @State var taisaku4 = ""
    @State var taisaku5 = ""
    @State var sel = 0

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("危険の予知").font(.title)) {
                    HStack {
                        TextField("危険を入力", text: $kiken1)
                        Picker(selection: $sel, label: Text("選択ください")) {
                            Text("0").tag(0)
                            Text("1").tag(1)
                            Text("2").tag(2)
                        }
                    }
                    TextField("危険を入力", text: $kiken2)
                    TextField("危険を入力", text: $kiken3)
                    TextField("危険を入力", text: $kiken4)
                    TextField("危険を入力", text: $kiken5)
                }

                Section(header: Text("対策").font(.title)) {
                    TextField("対策を入力", text: $taisaku1)
                    TextField("対策を入力", text: $taisaku2)
                    TextField("対策を入力", text: $taisaku3)
                    TextField("対策を入力", text: $taisaku4)
                    TextField("対策を入力", text: $taisaku5)
                }
            }
            .navigationTitle("危険予知と対策")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
