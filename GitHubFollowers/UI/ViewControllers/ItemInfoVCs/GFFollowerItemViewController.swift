//
// Copyright (c) Hellen Ferrari. All rights reserved.
//

import Foundation

protocol GFFollowerViewControllerDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GFFollowerItemViewController: GFItemInfoViewController {
    
    weak var delegate: GFFollowerViewControllerDelegate!
    
    init(user: User, delegate: GFFollowerViewControllerDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.following)
        actionButton.set(color: .systemGreen, title: "Get Followers", systemImageName: "person.3")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
