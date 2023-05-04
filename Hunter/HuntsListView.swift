import SwiftUI

struct HuntsListView: View {
    @Binding var hunts: [HuntModel]
    
    var body: some View {
        NavigationStack {
            List($hunts) { $hunt in
                NavigationLink(destination: HuntDetailView(hunt: $hunt)) {
                    CardView(hunt: hunt)
                }
                .listRowSeparatorTint(Color.black)
                .listRowBackground(Color.orange.opacity(0.4))
            }
            .foregroundColor(.black)
            .navigationTitle("Your Hunts")
            .toolbar {
                Button(action: {
                    
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Hunt")
            }
            .foregroundColor(.orange)
        }
    }
}

struct HuntsListView_Previews: PreviewProvider {
    static var previews: some View {
        HuntsListView(hunts: .constant(HuntModel.sampleData))
    }
}
