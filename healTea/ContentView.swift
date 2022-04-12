import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .padding(.top, 10)
                    Text("Home")
                }
            TeaDictionary(teaData: TeaData.sampleData)
                .tabItem {
                    Image(systemName: "leaf")
                    Text("Tea")
                }
            Mypage()
                .tabItem {
                    Image(systemName: "person")
                    Text("My")
                }
            Camera()
                .tabItem {
                    Image(systemName: "barcode.viewfinder")
                    Text("Barcode")
                }
                .foregroundColor(Color("TabBarBackground"))
        }
        .padding(.top, 10)
        .ignoresSafeArea(edges: .bottom)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(Color.gray.opacity(0.2))
            
            // Use this appearance when scrolling behind the TabView:
            UITabBar.appearance().standardAppearance = appearance
            // Use this appearance when scrolled all the way up:
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        .accentColor(.green)
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
        ContentView()
    }
}
