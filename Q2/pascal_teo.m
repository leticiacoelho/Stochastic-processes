## Stochastic processes
## Author: Jessica&Leticia

function rtn = pascal_teo(n, p, q)
  px_teorica = zeros(1, n);
    x = 1;
    %px da pascal
    for xx = 1:10
      coef = nchoosek(n, x);
      px_teorica(xx) = coef.*((p^(x))*(1-p)^(n-x));
      x = x+1;
    end

      
    if q==1
     %print("Q 2.c");
     figure(3)
     hold on
     stem(px_teorica,'b')
     title ('PMF Teorica - 2.c');
     grid on
   else
   %  print("Q 2.d");
     figure(4)
     hold on
     stem(px_teorica,'b')
     title ('PMF Teorica - 2.d');
     grid on
   end

   E_X_teorica = n*p
   Var_X_teorica = n*(p*(1-p))
  
endfunction
