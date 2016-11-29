Equipment.delete_all
WorkOrder.delete_all
Employee.delete_all
Equipment.create ([
  name: "Sony Microphone",
  id_number: 10,
  condition: "Good",
  checked_out: false,
  location: "Staging",
  ])
WorkOrder.create ([
  room_name: "Conference Room 1",
  number: 1,
  date: "11/20/2016",
  employee_name: "John Employee",
  employee_id: 123456
  ])
Employee.create ([
  first_name: "John",
  last_name: "Employee",
  employee_id: 123456
  ])