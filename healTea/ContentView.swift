import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var showPopUp = false
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader { geometry in
             VStack {
                 Spacer()
                 switch viewRouter.currentPage {
                 case .home:
                     Carousel()
                 case .liked:
                     TeaDictionary(teaData: TeaData.sampleData)
                 case .records:
                     Text("Records")
                 case .user:
                     Text("User")
                 }
                 Spacer()
                 HStack {
                     TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "homekit", tabName: "Home")
                     TabBarIcon(viewRouter: viewRouter, assignedPage: .liked, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "heart", tabName: "liked")
                     TabBarIcon(viewRouter: viewRouter, assignedPage: .records, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "waveform", tabName: "Records")
                     TabBarIcon(viewRouter: viewRouter, assignedPage: .user, width: geometry.size.width/4, height: geometry.size.height/28, systemIconName: "person.crop.circle", tabName: "Account")
                 }
                 .frame(width: geometry.size.width, height: geometry.size.height/8)
                 .background(Color("TabBarBackground").shadow(radius: 2))
             }
             .edgesIgnoringSafeArea(.bottom)
         }
    }
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
    
}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            FeedListView(feeds: FeedData.sampleData).preferredColorScheme(.dark)
//                .previewInterfaceOrientation(.portrait)
//        }
//        NavigationView {
//            FeedListView(feeds: FeedData.sampleData).preferredColorScheme(.light)
//                .previewInterfaceOrientation(.portrait)
//        }
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
