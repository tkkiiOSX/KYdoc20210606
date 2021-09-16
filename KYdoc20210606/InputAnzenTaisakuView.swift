//
//  InputAnzenTaisakuView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/20.
//

import SwiftUI

struct InputAnzenTaisakuView: View {
        @ObservedObject var data: Data

        @Environment(\.presentationMode) var presentationMode

        @State var selNum: Int = 0
        @State var anzen: String = ""

    var body: some View {
        Form {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                UserDefaults.standard.set(data.dic_name, forKey: "DIC_ANZEN")
                UserDefaults.standard.set(data.now_name, forKey: "NOW_ANZEN")
            }) {
                Text("< 保存して戻る")
            }
            Section {
                ForEach(0 ..< data.now_anzen.count, id: \.self) {index in
                    Text(data.now_anzen[index])
                }.onDelete { offsets in
                    self.data.now_anzen.remove(atOffsets: offsets)
                }
            }
            Section {
                Picker(selection: $selNum, label: Text("安全対策項目リストから選択")) {
                    ForEach(0 ..< data.dic_anzen.count, id: \.self) {index in
                                    Text(data.dic_anzen[index])
                    }
                }

                Button(action: {
                    data.now_anzen.append(data.dic_anzen[selNum])
                }, label: {
                    Text("安全対策項目リストで選択した安全対策項目を登録")
                })
            }
            Section {
                TextField("安全対策項目を追加", text: $anzen)
                Button(action: {
                    if anzen != "" {
                        data.dic_anzen.append(anzen)
                        anzen = ""
                    }

                }) {
                    Text("安全対策項目リストへの新規追加")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct InputAnzenTaisakuView_Previews: PreviewProvider {
    static var previews: some View {
        InputAnzenTaisakuView(data: Data())
    }
}
