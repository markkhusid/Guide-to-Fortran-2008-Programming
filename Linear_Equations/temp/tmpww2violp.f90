program LinearEquations
  ! solving the matrix equation A*x=b using LAPACK
  Implicit none

  ! declarations
  double precision :: A(3,3), b(3)
  integer :: i, pivot(3), ok
  
  ! matrix A
  A(1,:)=(/3, 1, 3/)
  A(2,:)=(/1, 5, 9/)
  A(3,:)=(/2, 6, 5/)
  
  ! vector b
  b(:)=(/-1, 3, -3/)
  !b(:)=(/2, 2, 9/)

  ! find the solution using the LAPACK routine DGESV
  call DGESV(3, 1, A, 3, pivot, b, 3, ok)

  ! print the solution x
  do i=1, 3
    write(*,9) i, b(i)
  end do  

9 format('x[', i1, ']= ', f5.2)  
end program LinearEquations
