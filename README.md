# Quest-generation-planner-code



# Quest-generation-planner-code



Use this online tool to solve the example branch mentioned in 3.2  http://editor.planning.domains/#

Or alternatively you can solve it in your local sytem using hsp algorithm https://github.com/bonetblai/hsp-planners


Example Branch:

Schematic elements of Ei:
F: character(CH), place(PL), item(IT), at(CH, PL), has(CH, PL),
hero(CH), alive(CH), path(PL0, PL1),know-request(CH0, CH1, IT),
know-need(CH0, CH1, IT).
o1:
name: go(CH0, PL0, PL1).
precond: character(CH0), place(PL0), place(PL1), at(CH0, PL0),
alive(CH0), hero(CH0), path(PL0, PL1).
effect: at(CH0, PL1), ¬at(CH0, PL0).
o2:
name: request(CH0, CH1, IT0, PL0).
precond: character(CH0), character(CH1), item(IT0),
place(PL0), at(CH0, PL0), at(CH1, PL0), alive(CH0),
alive(CH1), hero(CH1).
effect: know-request(CH1, CH0, IT1).
o3:
name: ask(CH0, CH1, IT0, PL0).
precond: character(CH0), character(CH1), item(IT0), place(PL0),
at(CH0, PL0), at(CH1, PL0), alive(CH0), alive(CH1),
hero(CH0), has(CH1, IT0).
effect: know-need(CH1, CH0, IT0).
o4:
name: give(CH0, CH1, IT0, PL0).
precond: character(CH0), character(CH1), item(IT0), place(PL0),
at(CH0, PL0), at(CH1, PL0), alive(CH0), alive(CH1),
hero(CH1), has(CH0, IT0), know-need(CH0, CH1, IT0).
effect: has(CH1, IT0), ¬has(CH0, IT0).
o5:
name: deliver(CH0, CH1, IT0, PL0).
precond: character(CH0), character(CH1), item(IT0), place(PL0),
at(CH0, PL0), at(CH1, PL0), alive(CH0), alive(CH1),
hero(CH0), has(CH0, IT0), know-request(CH0, CH1, IT0).
effect: has(CH1, IT0), ¬has(CH0, IT0).
Reactive elements of Ei:
Sj: character(john), character(rick), character(anne),
place(village), place(johnhome), place(store),
item(antidote2), hero(john), alive(john), alive(anne),
alive(rick), path(johnhome, village),
path(village, johnhome), path(store, village),
path(village, store), at(john, johnhome), at(anne, johnhome),
at(rick, store), has(rick, antidote2).
Gi: has(anne, antidote2), at(john, johnhome).
