//  MyVibe
//
//  Created by Piotr Torczyński on 26/10/2017.
//  Copyright © 2017 SmartApps. All rights reserved.
//

import UIKit

final class ApplicationController {

    init(dependencies: ApplicationDependenciesProvider) {
        self.dependencies = dependencies
    }

    private let dependencies: ApplicationDependenciesProvider

    private(set) lazy var rootViewController: UINavigationController = {
        let albumsViewController = AlbumsViewController(dependencies: self.dependencies)
        let navigationController = UINavigationController(rootViewController: albumsViewController)
        return navigationController
    }()
}
