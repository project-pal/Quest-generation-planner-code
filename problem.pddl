(define (problem p1)
  (:domain reactive-planning)

  (:objects
    anne john rick - character
    village johnhome store - place
    antidote2 - item
  )


  (:init
    (alive john) (alive anne) (alive rick) (hero john)
    (path johnhome village) (path village johnhome)
    (path village store) (path store village)
    (at john johnhome) (at anne johnhome) (at rick store)
    (has rick antidote2)
    (know-request john rick antidote2) (know-need rick john antidote2)
  )

  (:goal
    (and 
      (has anne antidote2)
      (at john johnhome)
    )
  )
)
