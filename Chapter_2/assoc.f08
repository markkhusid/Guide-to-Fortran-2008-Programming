program assoc

    implicit none
    real :: x = 3, y = 4

    associate (s => sqrt (x**2 + y**2))
        print *, s
        x = 5; y = 12
        print *, s
        print *, x, y
    end associate

    associate (s => x)
        print *, s
        x = 9
        print *, s
    end associate

end program assoc

