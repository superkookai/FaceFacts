//
//  PeopleView.swift
//  FaceFacts
//
//  Created by Weerawut Chaiyasomboon on 14/1/2567 BE.
//

import SwiftUI
import SwiftData

struct PeopleView: View {
    @Query var people: [Person] //load persons from SwiftData, refesh Views when change
    @Environment(\.modelContext) var modelContext
    
    init(searchString: String = "", sortOrder: [SortDescriptor<Person>] = []){
        _people = Query(filter: #Predicate{ person in
            if searchString.isEmpty{
                true
            }else{
                person.name.localizedStandardContains(searchString)
                || person.emailAddress.localizedStandardContains(searchString)
                || person.details.localizedStandardContains(searchString)
            }
        }, sort: sortOrder)
    }
    
    var body: some View {
        List{
            ForEach(people){ person in
                NavigationLink(value: person) {
                    Text(person.name)
                }
            }
            .onDelete(perform: { indexSet in
                deletePeople(at: indexSet)
            })
        }
    }
    
    func deletePeople(at offSets: IndexSet){
        for offSet in offSets{
            let person = people[offSet]
            modelContext.delete(person)
        }
    }
}

#Preview {
    do{
        let previewer = try Previewer()
        return PeopleView().modelContainer(previewer.container)
    }catch{
        return Text("Failed to create preview: \(error.localizedDescription)")
    }
}
