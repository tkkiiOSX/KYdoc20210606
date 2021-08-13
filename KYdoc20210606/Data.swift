import Foundation

class Data: ObservableObject {
    @Published var dic_name: [String] = ["明智小五郎", "金田一耕助"]
    @Published var now_name: [String] = []
}
