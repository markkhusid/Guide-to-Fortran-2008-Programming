program read_cards_2

implicit none
integer, dimension(:), allocatable      :: lost_card
integer                                 :: card, ios
character(len=99)                       :: iom

lost_card = [ integer :: ]
do
    read (unit = *, fmt = *, iostat = ios, iomsg = iom) card
    if (ios < 0) exit
    if (ios > 0) then
        print *, trim(iom)
        cycle
    end if
    lost_card = [ lost_card, card ]
end do

print "(4i8)", lost_card

end program read_cards_2
