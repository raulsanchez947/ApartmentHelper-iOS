import SwiftUI
import WebKit

struct ContentView: View {
    @State private var isLoading = true
    @State private var pageTitle = AppConfig.appName

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                WebView(
                    url: AppConfig.websiteURL,
                    isLoading: $isLoading,
                    pageTitle: $pageTitle
                )
                .ignoresSafeArea(edges: .bottom)

                if isLoading {
                    ProgressView("Loading \(AppConfig.appName)...")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(.ultraThinMaterial, in: Capsule())
                        .padding(.top, 12)
                }
            }
            .navigationTitle(pageTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
        .tint(.black)
    }
}
