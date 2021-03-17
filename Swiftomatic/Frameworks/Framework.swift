//
//  Framework.swift
//  Swiftomatic
//
//  Created by jacky on 17/03/2021.
//

import Foundation
import SwiftUI


struct Framework: Identifiable {
    let id = UUID()
    let frameworkName: String
    let imageFramework: String
    let descriptionFramework : String
    let resumeFramework : String
    let readingStage : String
    
}

let frameworks = [
    Framework(frameworkName: "SwiftUi", imageFramework: "swiftui", descriptionFramework: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs. With a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.", resumeFramework: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms ", readingStage: "En cours"),
    Framework(frameworkName: "UiKit", imageFramework: "uikit-meta", descriptionFramework: "The UIKit framework provides the required infrastructure for your iOS or tvOS apps. It provides the window and view architecture for implementing your interface, the event handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop needed to manage interactions among the user, the system, and your app. Other features offered by the framework include animation support, document support, drawing and printing support, information about the current device, text management and display, search support, accessibility support, app extension support, and resource management.", resumeFramework: "Construct and manage a graphical, event-driven user interface for your iOS or tvOS app.", readingStage: "Terminé"),
    Framework(frameworkName: "MapKit ", imageFramework: "mapkit", descriptionFramework: "If your app offers transit directions, you can make your directions available to Maps. You can also use Maps to supplement the directions that you provide in your app. For example, if your app only provides directions for subway travel, you can use Maps to provide walkingg directions to and from subway stations.", resumeFramework: "Display map or satellite imagery within your app.", readingStage: "Pas lu"),
    Framework(frameworkName: "CoreData", imageFramework: "coredata", descriptionFramework: "Use Core Data to save your application’s permanent data for offline use, to cache temporary data, and to add undo functionality to your app on a single device.Through Core Data’s Data Model editor, you define your data’s types and relationships, and generate respective class definitions. Core Data can then manage object instances at runtime to provide the following features.", resumeFramework: "Persist or cache data and support undo on a single device.", readingStage: "En cours"),
    Framework(frameworkName: "CloudKit", imageFramework: "cloudkit", descriptionFramework: "Store your app’s data in iCloud and keep everything up to date across apps and on the web with CloudKit JS.", resumeFramework: "Store your app’s data in iCloud and keep everything up to date across apps.", readingStage: "Pas lu"),
    Framework(frameworkName: "ArKit", imageFramework: "arkit", descriptionFramework: "Build unparalleled augmented reality experiences for hundreds of millions of users on iOS and iPadOS, the biggest AR platforms in the world. With powerful frameworks like ARKit and RealityKit, and creative tools like Reality Composer and Reality Converter, it’s never been easier to bring your ideas to life in AR.", resumeFramework: "Dive into the world of augmented reality.", readingStage: "En cours"),
    Framework(frameworkName: "Siri", imageFramework: "siri", descriptionFramework: "Siri is the world’s most popular intelligent assistant, and now has an all new compact design. With SiriKit and Shortcuts, your apps can help users get things done with just their voice, intelligent suggestions, or the Shortcuts app. Your apps can now also integrate with more platforms with Shortcuts on watchOS 7, SiriKit Music on HomePod, and SiriKit Media on Apple TV.", resumeFramework: "Siri is the world’s most popular intelligent assistant.", readingStage: "Terminé")
]
