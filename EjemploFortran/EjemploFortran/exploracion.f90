!  exploracion.f90 
!
!  FUNCTIONS:
!  EjemploFortran - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: EjemploFortran
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

program Exploracion
    !el implicit obliga a definir las variables
    implicit none

    ! Variables
    real :: x
    integer :: i
    character(len=4) :: nombre
    !inializacion de las variables 
    x= 5
    nombre = "Luis"
    ! Body of EjemploFortran
    print *, "Hello World , this my first code , awesome ¡"
    print *, "i am Luis ,  i  going to learn a new code lenguage"
    print *, "i hope learn a lot¡" , nombre


! operadores  + - * / ** 
    !operadores relacionales  == /= < <=
    ! operadores lógicos  .AND. .OR. .NOT.
! Condicionales
    if (x<0) then
    print *, x,"x es negativo" 
    else
        print *, x, "es positivo"
    end if
        
! Do like For en python
    do  i= 1,10 
        print *, "iteración",i
    end do
    stop
end program Exploracion