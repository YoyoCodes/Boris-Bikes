## CH 2

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working




nouns: person / bike / docking station

verbs: is working / release

| Object        | Messages    |
|---------------| ------------|
|person         |             |
|bike           |is_working?  |
|docking_station|release_bike |


DockingStation <-- release_bike --> bike

Bike <-- is_working? --> true/false


# CH 13

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.


| Object        | Messages    |Result     |
|---------------| ------------|-----------|
|DockingStation |dock(bike)   |return error message if it excedes capacity(1)


## CH 14

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

| Object        | Messages    |Result     |
|---------------| ------------|-----------|
|DockingStation |dock(bike)   |return error message if it excedes capacity(20)


## CH 17

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

| Object        | Messages    |Result     |
|---------------| ------------|-----------|
|DockingStation |full?        |increase capacity/specify new DEFAULT_CAPACITY

DockingStation <-- full? -->increase capacity
