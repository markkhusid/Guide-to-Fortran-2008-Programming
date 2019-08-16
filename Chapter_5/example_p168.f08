program single_letters

! Print individually the letters of an input string

    implicit none
    integer :: k
    character (len = 10) :: string

    read "(a)", string
    print *, "Input data string: ", string

    do k = 1, len(string)
        print *, "|", string(k : k), "|"
    end do

    print *, "====="

end program single_letters
