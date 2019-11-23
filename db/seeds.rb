Traveler.create(name: "Emilia", username:"Emi", email: "emi@example.com", password: "password")
Traveler.create(name: "Alex", username:"Alex 5000", email: "alex@example.com", password: "password")
Traveler.create(name: "Filippe", username:"Flamengo Surfer", email: "surfer@example.com", password: "password")

Goal.create(name: "Travel Brazil") #goal 1
Goal.create(name: "Travel United States") #goal 2
Goal.create(name: "Travel South America") #goal 3
Goal.create(name: "Travel to Best Surfer Spots") #goal 4
Goal.create(name: "World Travel") #goal 5

Destination.create(location:"Rio de Janeiro", description:"A Cidade Maravilhosa!", date_traveled:"10/02/2017", completed:true, traveler_id:1, goal_id:1)
Destination.create(location:"Sao Paulo", completed:false, traveler_id:1, goal_id:1)
Destination.create(location:"Curitiba", completed:false, traveler_id:1, goal_id:1)
Destination.create(location:"Lencois Maranheses", description:"The 4-wheeler tour was amazing!", date_traveled:"03/13/2018", completed:true, traveler_id:1, goal_id:1)
Destination.create(location:"Amazonas", completed:false, traveler_id:1, goal_id:1)
Destination.create(location:"Minas Gerais", description:"Inhotim is super cool!", date_traveled:"02/20/2018", completed:true, traveler_id:1, goal_id:1)
Destination.create(location:"Greece", completed:false, traveler_id:1, goal_id:5)
Destination.create(location:"Brazil", completed:false, traveler_id:1, goal_id:5)
Destination.create(location:"India", completed:false, traveler_id:1, goal_id:5)
Destination.create(location:"Japan", completed:false, traveler_id:1, goal_id:5)
Destination.create(location:"Australia", completed:false, traveler_id:1, goal_id:5)


Destination.create(location:"California", completed:false, traveler_id:2, goal_id:2)
Destination.create(location:"Texas", description: "Texas is my home!", completed:true, traveler_id:2, goal_id:2)
Destination.create(location:"Miami", completed:true, traveler_id:2, goal_id:2)
Destination.create(location:"Argentina", completed:false, traveler_id:2, goal_id:3)
Destination.create(location:"Peru", completed:false, traveler_id:2, goal_id:3)
Destination.create(location:"Chile", completed:false, traveler_id:2, goal_id:3)
Destination.create(location:"Costa Rica", completed:false, traveler_id:2, goal_id:3)

Destination.create(location:"Hawaii", completed:false, traveler_id:3, goal_id:4)
Destination.create(location:"California", completed:false, traveler_id:3, goal_id:4)
Destination.create(location:"Tahiti", completed:false, traveler_id:3, goal_id:4)
Destination.create(location:"France", completed:true, traveler_id:3, goal_id:4)
Destination.create(location:"Germany", completed:false, traveler_id:3, goal_id:4)
Destination.create(location:"Portugal", completed:false, traveler_id:3, goal_id:4)
Destination.create(location:"El Salvador", completed:false, traveler_id:3, goal_id:4)
