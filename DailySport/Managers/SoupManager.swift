//
//  SoupManager.swift
//  DailySport
//
//  Created by Simon Fournier on 14/11/2021.
//

import Foundation
import SwiftSoup

class SoupManager {

    enum SoupError: Error {
        case noBody
        case noContent
        case noTitle
        case noTable
    }

    class func scrap(_ url: URL) {
        do {
            let html = try String.init(contentsOf: url)
            let document = try SwiftSoup.parse(html)

//            guard let body = try document.select("body").first else { throw SoupError.noBody }
//            guard let content = body
//                .children().first(where: { $0.id() == "page"})?
//                .children().first(where: { $0.id() == "page-inner" })?
//                .children().first(where: { $0.id() == "main" })?
//                .children().first(where: { $0.id() == "content" })
//            else { throw SoupError.noContent }
//
//            guard let title = try content.children().first(where: { $0.id() == "page-title" })?.text() else { throw SoupError.noTitle}
//
//            guard let table = try content.select("article").first?
//                .children().first(where: { $0.nodeName() == "div" && $0.id() != "book-navigation-1" })!
//                .children().first?
//                .children().first?
//                .children().select("div").first(where: { try $0.className() == "field-item even" })!
//                .children().select("table").first
//            else { throw SoupError.noTable }
//            let rows = try table.select("tr")
            // .map { pra($0) + "/" + "\($0.children().count)" }

//            let series = SeriesParser(rows: rows).series
//
//            print(title)
//            print(table)
            print("")
        } catch {
            print(error)
        }
    }
}

func pra(_ elt: Element) -> String {
    elt.nodeName() + ":" + elt.id() + ":" + ((try? elt.className()) ?? "")
}
