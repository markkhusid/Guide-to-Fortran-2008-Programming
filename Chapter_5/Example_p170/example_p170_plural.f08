program plural
      implicit none
      character (len=18)    :: word
      integer               :: ios

      ! if (ios < 0) exit  End of file
      write (unit=*, fmt="(a)", advance="no") "Input data word: "
      read (unit=*, fmt="(a)", iostat=ios) word
      print *, " Plural of word: ", trim(word) // "s"

end program plural
      
