!  clase4.f90 
!
!  FUNCTIONS:
!  clase4 - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: clase4
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program clase4

    implicit none

    ! Variables
    integer :: n,i , u_n , v_n
    real :: u, v,acum
    write(*,*) "escribe la dimensión n de los vectores"
    read(*,*) n
    DO i = 1,n 
        write(*,*) "escribe el termino a_", i, "del vector u"
        read(*,*) u_n
        write(*,*) "escribe el termino b_", i, "del vector b"
        read(*,*) v_n
        acum += acum(u_n*v_n)
    end do 
    write(*,*) acum
    
    ! Body of clase4
    print *, 'Hello World'

    end program clase4

