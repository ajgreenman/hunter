import SwiftUI

struct CardView: View {
    let hunt: HuntModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(hunt.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            HStack {
                Label("\(hunt.sites.count)", systemImage: "xmark.seal")
                    .labelStyle(.trailingIcon)
                Spacer()
            }
            .font(.caption)
        }
        .padding(4)
        .foregroundColor(.black)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(hunt: HuntModel.sampleData[0])
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
