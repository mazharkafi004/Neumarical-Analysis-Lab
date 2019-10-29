function value = False_Position(f, a, b)
  c(1) = (a(1)* f(b(1)) - b(1) * f(a(1)))/(f(b(1)) - f(A(1)));
  x(1) = f(a(1));
  y(1) = f(b(1));
  z(1) = f(c(1));
  
  for i = 2:20
    
    if x(i-1)*z(i-1) < 0 
      b(i) = c(i-1);
      a(i) = a(i-1);
    else
      a(i) = c(i-1);
      b(i) = b(i-1);
    endif
    
    x(i) = f(a(i));
    y(i) = f(b(i));
    c(i) = (a(i)* f(b(i)) - b(i) * f(a(i)))/(f(b(i)) - f(a(i)));
    z(i) = f(c(i));
    
  endfor
  value = [a' b' x' y' c' z'];
  
endfunction