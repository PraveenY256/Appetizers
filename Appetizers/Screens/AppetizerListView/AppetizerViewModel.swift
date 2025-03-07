//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 03/03/25.
//

import Foundation

class AppetizerViewModel: ObservableObject {
    
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    

    func fetchAppetizers() {
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
    }
}
