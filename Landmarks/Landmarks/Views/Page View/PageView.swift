//
//  PageView.swift
//  Landmarks
//
//  Created by Micah Jesse Njeru on 23/05/2023.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    @State private var currentPage = 0
    var pages: [Page]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
