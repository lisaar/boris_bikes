#Boris Bikes

We are building a system that manages bikes that can be rented by users from docking stations and returned there at the end of the rental. The bikes can break while being used, in which case they will not be available for rental after they are returned. There is a garage that can fix broken bikes. A van is used to move broken bikes from the stations to the garage. It can also be used to take fixed bikes back to the station(s). The van, all stations and the garage have fixed capacity, so they cannot take more bikes that they can hold.

###Bike
|Responsibility| Collaborator|
| ------------ | --------- |
|docked| station|
|fixed by| garage|
|moved to| garage by van|
|moved to| station by van|

###Station
|Responsibility| Collaborator|
| ------------ | --------- |
|stores| bikes|
|docks| bikes|
|releases| bikes|
|gives |bike to van|
|receives |bike from  van|
|holds on to broken| bikes|


###Van
|Responsibility| Collaborator|
| ------------ | --------- |
|receives bikes to| station/garage|
|returns bikes to| station/garage

###Garage
|Responsibility| Collaborator|
| ------------ | --------- |
|receives| bikes from van
|fixes broken| bikes|
|returns| bikes to van|


