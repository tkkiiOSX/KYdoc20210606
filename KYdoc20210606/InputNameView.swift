//
//  InputNameView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/18.
//

import SwiftUI

//var names = ["鈴木太郎（A)", "田中太郎（B)", "佐藤花子（O)"]

struct InputNameView: View {
    @ObservedObject var data: Data
    
    @State var selNum: Int = 0
    @State var name: String = ""

    var body: some View {
        Form {
            Section {
                ForEach(0 ..< data.now_name.count, id: \.self) {index in
                    Text(data.now_name[index])
                }
            }
            Section {
                Picker(selection: $selNum, label: Text("名前リストから選択")) {
                    ForEach(0 ..< data.dic_name.count, id: \.self) {index in
                        Text(data.dic_name[index])
                    }
                }
                Button(action: {
                    data.now_name.append(data.dic_name[selNum])
                }, label: {
                    Text("リストで選択した名前を登録")
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
                    Text("リストへの新規追加")
                }
            }
        }
    }
}

struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView(data: Data())
    }
}
