//
//  InputSgyonaiyouView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/20.
//

import SwiftUI

struct InputSgyonaiyouView: View {
    @ObservedObject var data: Data

    @Environment(\.presentationMode) var presentationMode

    @State var selNum: Int = 0
    @State var sagyo: String = ""

    var body: some View {
        Form {

            Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            UserDefaults.standard.set(data.dic_sagyo, forKey: "DIC_SAGYO")
                            UserDefaults.standard.set(data.now_sagyo, forKey: "NOW_SAGYO")

                        }) {
                            Text("< 保存して戻る")
                        }
                        Section {
                            ForEach(0 ..< data.now_sagyo.count, id: \.self) {index in
                                Text(data.now_sagyo[index])
                            }.onDelete { offsets in
                                self.data.now_sagyo.remove(atOffsets: offsets)
                            }
                        }
            Section{
                Picker(selection: $selNum, label: Text("作業項目をリストから選択")){
                    ForEach(0 ..< data.dic_sagyo.count,id:\.self){index in
                        Text(data.dic_sagyo[index])
                    }
                }
                Button(action: {
                    data.now_sagyo.append(data.dic_sagyo[selNum])
                }, label: {
                    Text("作業項目リストで選択した作業項目を登録")
                })
            }
            Section{
                TextField("作業項目を追加",text: $sagyo)
                Button(action: {
                    if sagyo != "" {
                        data.dic_sagyo.append(sagyo)
                        sagyo = ""
                    }

                }, label: {
                    Text("作業項目リストへの新規追加")
                })
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
struct InputSgyonaiyouView_Previews: PreviewProvider {
    static var previews: some View {
        InputSgyonaiyouView(data: Data())
    }
}
