
module f_module

        implicit none
        private
        integer, parameter, public      :: largest_power = 10
        public                          :: f

contains

        function f(x) result (f_result)

                real, intent (in)               :: x
                real                            :: f_result

                integer, parameter              :: kind_needed = &
                        selected_real_kind(largest_power+1)

                f_result = (1 + 1 / real(x, kind_needed)) ** x
        end function f

end module f_module

program function_values
        
        use f_module
        implicit none
        real                                    :: x
        integer                                 :: i

        do i = 0, largest_power
                x = 10.0 ** i
                print "(f15.1, f15.6)", x, f(x)
        end do

end program function_values

