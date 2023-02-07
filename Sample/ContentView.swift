
import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var index = 0
    var body: some View {
        VStack {
            Button(action: {
                index += 10
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: { isActive = true })
                isActive = true
            }) {
                Text("解析する")
            }
        }
        .sheet(isPresented: $isActive) {
            LabelView(numberLabel: index)
        }
    }
}

struct LabelView: View {
    @State var numberLabel: Int
    var body: some View {
        VStack {
            Text("\(numberLabel)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
