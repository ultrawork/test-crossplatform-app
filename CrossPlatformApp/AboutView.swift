import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Spacer()

                Image(systemName: "apps.iphone")
                    .font(.system(size: 64))
                    .foregroundColor(.accentColor)

                Text("CrossPlatform App")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Version 1.0.0")
                    .font(.title3)
                    .foregroundColor(.secondary)

                Text("A demo cross-platform application built with SwiftUI for iOS and Jetpack Compose for Android. Both platforms share the same functionality and user experience.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                    .foregroundColor(.secondary)

                Spacer()

                Button(action: {
                    dismiss()
                }) {
                    Text("Back")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 32)
                .padding(.bottom, 32)
            }
            .navigationTitle("About")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AboutView()
}
