//
//  InputSgyonaiyouView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/20.
//

import SwiftUI

struct InputSgyonaiyouView: View {
    @ObservedObject var data: Data

    @State var selNum: Int = 0
    @State var sagyo: String = ""

    var body: some View {
        Form {
            Section {
                ForEach(0 ..< data.now_sagyo.count,id:\.self) {index in
                    Text(data.now_sagyo[index])
                }
            }
            Section{
                Picker(selection: $selNum, label: Text("作業リストから選択")){
                    ForEach(0 ..< data.dic_sagyo.count,id:\.self){index in
                        Text(data.dic_sagyo[index])
                    }
                }
                Button(action: {
                    data.now_sagyo.append(data.dic_sagyo[selNum])
                }, label: {
                    Text("リストで選択した作業内容を登録")
                })
            }
            Section{
                TextField("作業項目追加",text: $sagyo)
                Button(action: {
                    if sagyo != "" {
                        data.dic_sagyo.append(sagyo)
                        sagyo = ""
                    }

                }, label: {
                    Text("リストへの新規追加")
                })
            }
        }
    }
}
struct InputSgyonaiyouView_Previews: PreviewProvider {
    static var previews: some View {
        InputSgyonaiyouView(data: Data())
    }
}
