//
//  AddTransactionPresenter.swift
//  ExpenseTracker
//
//  Created by Avinash on 23/08/22.
//

import Foundation
import UIKit

final class AddTransactionPresenter: AddTransactionViewToPresenterProtocol {
    var interactor: AddTransactionPresenterToInteractorProtocol?
    var router: AddTransactionPresenterToRouterProtocol?
    weak var view: AddTransactionPresenterToViewProtocol?

    private let datasource: AddTransactionTableDatasource
    
    init() {
        datasource = AddTransactionTableDatasource()
    }
    
    func viewLoaded() {
        view?.didUpdateViewState(.content(buttonTitle: AppStrings.addTransactionButton))
        view?.didUpdateViewState(.reloadTable)
    }
    
    func numberOfSections() -> Int {
        return datasource.numberOfSections()
    }
    
    func numberOfRows(inSection section: Int) -> Int {
        return datasource.numberOfRows(inSection: section)
    }
    
    func heightForRow(atIndex index: Int) -> CGFloat {
        return datasource.heightForRow(atIndex: index)
    }
    
    func dataForRow(atIndex index: Int) -> AddTransactionCellType {
        return datasource.dataForRow(atIndex: index)
    }
}

extension AddTransactionPresenter: AddTransactionInteractorToPresenterProtocol {
    
}
