import UIKit
struct Student{
    let ID_number: Int
    let first_name:String
    let middle_name: String
    let last_name: String
    var registrations: [Registration] = []
    
    init(id:Int, fn:String, mn:String, ln:String) {
        ID_number = id
        first_name = fn
        middle_name = mn
        last_name = ln
    }
    
    func getMiddleInitial()-> Character{
        var middleNameCopy = middle_name.uppercased()
        return middleNameCopy.remove(at: middle_name.startIndex)
    }
    
    mutating func addRegistration(reg:Registration){
        registrations.append(reg)
    }
    
    func getFullName()-> String{
        return last_name+", "+first_name+" "+String(getMiddleInitial())+"."
    }
    
    static func type(student:Student){
        var report = 80
        var ID_str = "\u{2503} ID Number: " + String(student.ID_number)
        var Year_str = "School Year: " + student.registrations[0].getYear()
        var Name_str = "\u{2503} Full name: " + student.getFullName()
        var Sem_str = student.registrations[0].description()
        
        print("\u{250F}",terminator:"")
        print(String(repeating: "\u{2501}", count: report - 2 ),terminator:"")
        print("\u{2513}")
        print(ID_str,terminator:"")
        print(String(repeating: " ", count: (report/2)-ID_str.count ), terminator:"")
        print(Year_str, terminator:"")
        print(String(repeating: " ", count: (report/2)-Year_str.count - 1 ), terminator:"")
        print("\u{2503}")
        print(Name_str,terminator:"")
        print(String(repeating: " ", count: (report/2)-Name_str.count ), terminator:"")
        print(Sem_str, terminator:"")
        print(String(repeating: " ", count: (report/2)-Sem_str.count - 1 ), terminator:"")
        print("\u{2503}")
        print("\u{2523}",terminator:"")
        print(String(repeating: "\u{2501}", count: report - 2),terminator:"")
        print("\u{252B}")
        
        print("\u{2503}", terminator:"")
        print("Subject", terminator:"")
        print(String(repeating: " ", count: (report/4)-"|Subject".count ), terminator:"")
        print("Description", terminator:"")
        print(String(repeating: " ", count: (report/4)-"Description".count ), terminator:"")
        print("Schedule", terminator:"")
        print(String(repeating: " ", count: ((2*report)/4)-"Schedule".count - 1 ), terminator:"")
        print("\u{2503}")
        print("\u{2503}" , terminator:"")
        print(String(repeating: " ", count: report - 2), terminator:"")
        print("\u{2503}")
        print("\u{2523}",terminator:"")
        print(String(repeating: "\u{2505}", count: report - 2), terminator:"")
        print("\u{250B}")
        
        var iter = student.registrations[0].courses.count
        for x in 0..<iter {
            var code = student.registrations[0].courses[x].code
            var desc = student.registrations[0].courses[x].description
            var sched = student.registrations[0].courses[x].class_schedule
            
            print("\u{2503}", terminator:"")
            print(code, terminator:"")
            print(String(repeating: " ", count: (report/4) - String(code).count ), terminator:"")
            print(desc, terminator:"")
            print(String(repeating: " ", count: (report/4) - desc.count ), terminator:"")
            print(sched, terminator:"")
            print(String(repeating: " ", count: ((2*report)/4) - sched.count - 2 ), terminator:"")
            print("\u{2503}")
        }
        print("\u{2517}",terminator:"")
        print(String(repeating: "\u{2501}", count: report - 2 ),terminator:"")
        print("\u{251B}")
    }
}
struct  Registration{
    let year: Int
    var student: Student
    var courses:[Course] = []
    var sem = 0
    
    init(yr:Int, student:Student, sem:Int) {
        year = yr
        self.student = student
        self.sem = sem
    }
    
    mutating func addCourse(course:Course){
        courses.append(course)
    }
    
    func getYear()-> String{
        return String(year)+" - "+String(year+1)
    }
    
    func description()-> String{
        switch sem {
        case 1:
            return "1st Semester"
        case 2:
            return "2nd Semester"
        case 3:
            return "Summer"
        default:
            return "Invalid Input"
        }
    }
    
}

struct Course{
    let code: Int
    var description: String
    var class_schedule: String
    
    init(code:Int, description:String, class_schedule:String) {
        self.code = code
        self.description = description
        self.class_schedule = class_schedule
    }
}
var a = Student(id: 1, fn: "q", mn: "b", ln: "c")
a.getMiddleInitial()
a.getFullName()

var b = Registration(yr: 2000, student: a, sem:1)

b.getYear()

var c = Course(code: 1111, description: "Computer Science", class_schedule: "5:40 pm - 8:30 pm MFW")

b.addCourse(course:c)
b.addCourse(course:c)
b.addCourse(course:c)
b.addCourse(course:c)
b.addCourse(course:c)
a.addRegistration(reg: b)

Student.type(student:a)



