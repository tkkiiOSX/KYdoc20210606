//
//  InputNameView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/18.
//

import SwiftUI

struct InputNameView: View {
    @ObservedObject var data: Data

    @Environment(\.presentationMode) var presentationMode

    @State var selNum: Int = 0
    @State var name: String = ""

    var body: some View {
        Form {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                UserDefaults.standard.set(data.dic_name, forKey: "DIC_NAME")
                UserDefaults.standard.set(data.now_name, forKey: "NOW_NAME")

            }) {
                Text("< 保存して戻る")
            }
            Section {
                ForEach(0 ..< data.now_name.count, id: \.self) {index in
                    Text(data.now_name[index])
                }.onDelete { offsets in
                    self.data.now_name.remove(atOffsets: offsets)
                }
            }
            Section {
                Picker(selection: $selNum, label:
                        Text("名前をリストから選択")) {
                    ForEach(0 ..< data.dic_name.count, id: \.self) {index in
                        Text(data.dic_name[index])
                    }
                }
                Button(action: {
                    data.now_name.append(data.dic_name[selNum])
                }, label: {
                    Text("名前リストで選択した名前を登録")
                })
            }
            Section {
                TextField("名前（血液型）追加", text: $name)
                Button(action: {
                    if name != "" {
                        data.dic_name.append(name)
                        name = ""
                    }

                }) {
                    Text("名前リストへの新規追加")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView(data: Data())
    }
}
