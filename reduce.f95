program reduce

   ! Daniel Sponseller & Nicholas Maynard
   !
   ! This program allows the user to input a fraction with two integers, a
   ! numerator and a denominator. The program uses a greatest common divisor
   ! function to reduce the fraction and prints it to the screen.

   implicit none
   
   integer :: Numerator, Denominator, gcd, divisor
   
   ! Prompt and input the fraction.
   print*,'Enter the numerator'
   read*, Numerator
   print*,'Enter the denominator'
   read*, Denominator
   
   ! Find the greatest common divisor.
   divisor = gcd(Numerator, Denominator)

   ! Print out reduced fraction.
   print*
   print*,'Divisor = ', Divisor
   print*
   print*,'Reduced fraction is:'
   print*,Numerator/divisor
   print*,'----------------'
   print*,Denominator/divisor
   
end program reduce

! Write your function here.
recursive function gcd(x,y) result(gd)
   integer x, y, gd
   if (y == 0) then
      gd = x
   else
      gd = gcd(y, mod(x,y))
   endif


end function 
