module line_mod

      implicit none
      private

      type, public :: line
          real :: x1, y1, x2, y2

          contains
              procedure :: length
      end type line

      interface
          module function length (l)
              class(line), intent(in)  :: l
              real :: length
          end function length
      end interface

end module line_mod

submodule (line_mod) line_length_mod

      contains
          module procedure length

              length = sqrt((l%x2 - l%x1)**2 + (l%y2 - l%y1)**2)
          end procedure length

end submodule line_length_mod

program submod

          use line_mod
          implicit none
          type (line)   :: line_1
          line_1 = line(0, 0, 1, 1)

          print "(f15.1)", line_1%length()

end program submod
