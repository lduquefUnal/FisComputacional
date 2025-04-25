!  clase_2.f90 
!
!  FUNCTIONS:
!  clase_2 - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: clase_2
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program clase_2

    implicit none

    ! Variables
    real :: a, b, c, x1, x2 ,d

    ! Body of clase_2
    write(*,*) "escribe las constantes de la ecuación de la forma ax^2+bx+c=0"
    read(*,*) a, b, c
    d = b**2-(4*a*c)
    if (d > 0) then
        x1  = (-b+(d**(1/2)))/(2*a) 
        x2  = (-b-(d**(1/2)))/(2*a) 
        write(*,*) "este es X1", x1 
        write(*,*) "este es X1", x2
    else 
        write(*,*) "tiene una unica solución o solución compleja"
    end if  
    end program clase_2

