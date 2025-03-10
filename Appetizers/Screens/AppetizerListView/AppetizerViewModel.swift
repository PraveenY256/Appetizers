//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 03/03/25.
//

import Foundation

@MainActor
final class AppetizerViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    

    /*func fetchAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result in
            guard let self = self else { return }
            
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                    case .success(let appetizers):
                        self.appetizers = appetizers
                        
                    case .failure(let error):
                        switch error {
                            case .invalidURL:
                                self.alertItem = AlertContext.invalidURL
                                
                            case .invalidResponse:
                                self.alertItem = AlertContext.invalidResponse
                                
                            case .invalidData:
                                self.alertItem = AlertContext.invalidData
                                
                            case .unableToComplete:
                                self.alertItem = AlertContext.unableToComplete
                                
                        }
                }
            }
            
        }
    }*/
    
    func fetchAppetizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                
                if let apError = error as? APError {
                    switch apError {
                        case .invalidURL:
                            alertItem = AlertContext.invalidURL
                            
                        case .invalidResponse:
                            alertItem = AlertContext.invalidResponse
                            
                        case .invalidData:
                            alertItem = AlertContext.invalidData
                            
                        case .unableToComplete:
                            alertItem = AlertContext.unableToComplete
                    }
                } else {
                    //Generic Error
                    alertItem = AlertContext.genericError
                }
                
                isLoading = false
            }
        }
    }
}
