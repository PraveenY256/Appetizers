//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 19/02/25.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel: AppetizerViewModel = AppetizerViewModel()
    
    var body: some View {
        
        ZStack {
            NavigationStack {
                
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        //.listRowSeparator(.hidden)
                        //.listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .blur(radius: viewModel.isShowingDetail ? 20: 0)
            .task {
                viewModel.fetchAppetizers()
            }
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer:
                                        viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButtonTitle)
        }
    }
}

#Preview {
    AppetizersListView()
}
