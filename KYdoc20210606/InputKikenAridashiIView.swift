//
//  InputKikenAridashiIView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/20.
//

import SwiftUI

struct InputKikenAridashiIView: View {

    @ObservedObject var data: Data

    @State var selNum: Int = 0
    @State var kiken: String = ""

    var body: some View {
        Form {
            Section {
                ForEach(0 ..< data.now_kiken.count, id: \.self) {index in
                        Text(data.now_kiken[index])
                    }.onDelete { offsets in
                        self.data.now_kiken.remove(atOffsets: offsets)
                    }
                }
            Section {
                Picker(selection: $selNum, label: Text("危険予知項目リストから選択")) {
                ForEach(0 ..< data.dic_kiken.count, id: \.self) {index in
                        Text(data.dic_kiken[index])
                }
            }

            Button(action: {
                    data.now_kiken.append(data.dic_kiken[selNum])
                }, label: {
                    Text("危険予知項目リストで選択した危険予知項目を登録")
                })
            }
            Section {
                TextField("危険予知項目追加", text: $kiken)
                Button(action: {
                    data.dic_kiken.append(kiken)
                    kiken = ""
                }) {
                    Text("危険予知項目リストへの新規追加")
                }
            }

        }

    }
}

struct InputKikenAridashiIView_Previews: PreviewProvider {
    static var previews: some View {
        InputKikenAridashiIView(data: Data())
    }
}
