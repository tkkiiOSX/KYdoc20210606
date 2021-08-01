//
//  InputNameView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/18.
//

import SwiftUI

//var names = ["鈴木太郎（A)", "田中太郎（B)", "佐藤花子（O)"]

struct InputNameView: View {

    @Binding var tourokuname: [String]
    @Binding var nameData: [String]
    
    @State var selNum: Int = 0
    @State var name: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section {
                    ForEach(0 ..< tourokuname.count, id: \.self) {index in
                        Text(tourokuname[index])
                    }
                }
                Section {

                    Picker(selection: $selNum, label: Text("名前リストから選択")) {
                        ForEach(0 ..< nameData.count, id: \.self) {index in
                            Text(nameData[index])
                        }
                    }
                    Button(action: {
                        tourokuname.append(nameData[
                        selNum])
                    }, label: {
                        Text("リストで選択した名前を登録")
                    })
                }
                Section {
                    TextField("名前（血液型）追加", text: $name)
                    Button(action: {
                        nameData.append(name)
                        tourokuname.append(name)
                        name = ""
                    }) {
                        Text("リストへの新規追加")
                    }
                }

            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }






    /*var body: some View {
        Form {
            Section(header: Text("登録済み")) {
                ForEach(0 ..< names.count) {index in
                    Button(action: {}) {
                        Text(names[index])
                    }
                }
            }
            Section(header: Text("名前（血液型）追加")) {
                Button(action: {}) {
                    Text("＋")
                }
            }

        }
    }*/

}
struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView()
    }
}
