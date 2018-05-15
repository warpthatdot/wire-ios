//
// Wire
// Copyright (C) 2018 Wire Swiss GmbH
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see http://www.gnu.org/licenses/.
//

import Foundation

extension ImageMessageCell {
    func updateImageBorder() {
        let showBorder = !imageSmallerThanMinimumSize()
        fullImageView.layer.borderWidth = showBorder ? UIScreen.hairline : 0

        switch self.variant {
        case .light:
            fullImageView.layer.borderColor = UIColor(white: 0, alpha: 0.08).cgColor
        case .dark:
            fullImageView.layer.borderColor = UIColor(white: 1, alpha: 0.08).cgColor
        }
    }
}