(define (domain reactive-planning)
  (:requirements :strips :typing)
  (:types character place item)
  
  (:predicates
    (alive ?x - character)
    (hero ?x - character)
    (at ?x - character ?y - place)
    (path ?x - place ?y - place)
    (has ?x - character ?y - item)
    (know-request ?x - character ?y - character ?z - item)
    (know-need ?x - character ?y - character ?z - item)
  )

  (:action go
    :parameters
      (?c - character ?from ?to - place)
    :precondition
      (and
        (at ?c ?from)
        (path ?from ?to)
        (alive ?c)
        (hero ?c)
      )
    :effect
      (and
        (not (at ?c ?from))
        (at ?c ?to)
      )
  )

  (:action request
    :parameters
      (?from ?to - character ?item - item ?place - place)
    :precondition
      (and
        (at ?from ?place)
        (at ?to ?place)
        (alive ?from)
        (alive ?to)
        (hero ?to)
      )
    :effect
      (know-request ?to ?from ?item)
  )

  (:action ask
    :parameters
      (?from ?to - character ?item - item ?place - place)
    :precondition
      (and
        (at ?from ?place)
        (at ?to ?place)
        (alive ?from)
        (alive ?to)
        (hero ?from)
        (has ?to ?item)
      )
    :effect
      (know-need ?to ?from ?item)
  )

  (:action give
    :parameters
      (?from ?to - character ?item - item ?place - place)
    :precondition
      (and
        (at ?from ?place)
        (at ?to ?place)
        (alive ?from)
        (alive ?to)
        (hero ?to)
        (has ?from ?item)
        (know-need ?from ?to ?item)
      )
    :effect
      (and
        (has ?to ?item)
        (not (has ?from ?item))
      )
  )

  (:action deliver
    :parameters
      (?from ?to - character ?item - item ?place - place)
    :precondition
      (and
        (at ?from ?place)
        (at ?to ?place)
        (alive ?from)
        (alive ?to)
        (hero ?from)
        (has ?from ?item)
        (know-request ?from ?to ?item)
      )
    :effect
      (and
        (has ?to ?item)
        (not (has ?from ?item))
      )
  )
)
