Equipment.delete_all
WorkOrder.delete_all
Employee.delete_all
Equipment.create! ([
  name: "Sony Microphone",
  id_number: 10,
  condition: "Good",
  checked_out: false,
  location: "Staging",
  quantity: 50
  ])
Equipment.create! ([
  name: "Mackie Mixer",
  id_number: 11,
  condition: "Good",
  checked_out: false,
  location: "Staging",
  quantity: 5
  ])
Equipment.create! ([
  name: "PA Cart 01",
  id_number: 80,
  condition: "Good",
  checked_out: false,
  location: "Staging",
  quantity: 1
  ])
Equipment.create! ([
  name: "PA Cart 02",
  id_number: 81,
  condition: "Good",
  checked_out: true,
  location: "Conference Room 1",
  quantity: 50
  ])
Equipment.create! ([
  name: "Speaker Stand",
  id_number: 67,
  condition: "Good",
  checked_out: false,
  location: "Staging",
  quantity: 50
  ])

WorkOrder.create! ([
  room_name: "Conference Room 1",
  number: 1,
  date: "11/20/2016",
  employee_name: "John Employee",
  employee_id: 123456
  ])
  
WorkOrder.create!([
  room_name: "Conference Room 10",
  number: 2,
  date: "11/24/2016",
  employee_name: "John Adams",
  employee_id: 789101
  ])
Employee.create! ([
  first_name: "John",
  last_name: "Employee",
  employee_id: 123456
  ])