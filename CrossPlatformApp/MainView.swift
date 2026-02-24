import SwiftUI

struct DemoItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let icon: String
}

struct MainView: View {
    @State private var showAbout = false

    private let demoItems: [DemoItem] = [
        DemoItem(title: "Dashboard", subtitle: "View your activity summary", icon: "chart.bar.fill"),
        DemoItem(title: "Messages", subtitle: "Check recent conversations", icon: "message.fill"),
        DemoItem(title: "Settings", subtitle: "Customize your preferences", icon: "gearshape.fill"),
        DemoItem(title: "Profile", subtitle: "Manage your account details", icon: "person.circle.fill"),
        DemoItem(title: "Notifications", subtitle: "Stay updated with alerts", icon: "bell.fill")
    ]

    var body: some View {
        NavigationStack {
            List(demoItems) { item in
                HStack(spacing: 16) {
                    Image(systemName: item.icon)
                        .font(.title2)
                        .foregroundColor(.accentColor)
                        .frame(width: 32)
                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.title)
                            .font(.headline)
                        Text(item.subtitle)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("CrossPlatform App")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAbout = true
                    } label: {
                        Image(systemName: "info.circle")
                    }
                }
            }
            .sheet(isPresented: $showAbout) {
                AboutView()
            }
        }
    }
}

#Preview {
    MainView()
}
