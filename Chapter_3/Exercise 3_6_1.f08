program median_of_3_program

    implicit none
    real :: num1, num2, num3
    real :: median
    
    print *, "This program finds the median of three numbers....."
    print *, "Enter the first number -->"
    read *, num1
    print *, "Enter the second number -->"
    read *, num2
    print *, "Enter the last number -->"
    read *, num3
    
    print *, "The three entered numbers were -->", num1, num2, num3
    
    median = medianOf3(n1=num1, n2=num2, n3=num3)
    
    print *, "The median value is -->", median
 
    contains

        subroutine swap(a, b)
            real, intent (in out) :: a, b
            real :: temp
            temp = a
            a = b
            b = temp
        end subroutine swap
    
        subroutine sort(val1, val2, val3)
            real, intent(in out) :: val1, val2, val3
        
            if (val1 > val2) then
                call swap (val1, val2)
            end if
            if (val1 > val3) then
                call swap (val1, val3)
            end if
            if (val2 > val3) then
                call swap (val2, val3)
            end if
        end subroutine sort

        function medianOf3(n1, n2, n3) result (median_value)
 
            real, intent(in out) :: n1, n2, n3
            real :: median_value
        
            call sort (val1=n1, val2=n2, val3=n3)
            
            median_value = n2
     
        end function medianOf3

end program median_of_3_program
