
%luFactor is a function that solves for valiables (finds root) so that all expressions are true.
%it does so based on a user's matrix input. It uses the lu factorization
%technique which makes solving similar equations quicker and more efficient.
%
%Inputs:
%    A - coefficient matrix
%Outputs:
%    L - lower triangular matrix
%    U - upper triangular matrix
%    P - the pivot matrix

%For Testing Purposes, keep commented out if testing other function
A = [-3 2 -1; 10 -6 2; 1 1 5];
% End of Test

% if nargin >= 2
%     warning('The Number of input arguments should be 1, the input should be a system of equation put in as a matrix');
% end

Asize = size(A); %determines size of square matrix A
Arows = Asize(1); %assigns # of rows to variable
Acol = Asize(2); %assigns # of columns to variable
L = eye(Arows, Acol); %replicates dimensions of matrix A to matrix L and inputs zeros with ones on diagonal
U = zeros(Arows, Acol); %replicates dimensions of matrix A to matrix U and inputs zeros
P = eye(Arows, Acol); %replicates dimensions of matrix A to matrix P and inputs zeros with ones on diagonal
absA = abs(A) 
[absAN, index] = sortrows(absA,'descend')
StoreA = zeros(Arows, Acol)
StoreP = zeros(Arows, Acol)
d = 1
index = index
while d < (Arows +1) %for loop runs as many times as the # of rows in matrix A
StoreA(d,:) = A(d,:)%saves original row vectors of A matrix to matrix StoreA
% StoreA(d) = A(d,:)
% StoreA(d) = A(d,:)
StoreP(d,:) = P(d,:)%saves original row vectors of P matrix to matrix StoreP 
% StoreP(d) = P(d,:)
% StoreP(d) = P(d,:)
d = d+1
end



% n = size (A,1) ;
% p = 1:n ;
% 
% % compute L, U, and p (overwriting A with L and U)
% for k = 1:n
%     % partial pivoting: look in A(k:n,k) for the largest entry A(i,k)
%     [x i] = max (abs (A (k:n,k))) ;
%     i = i+k-1 ;
%     % swap row i and k of A (and L)
%     A ([k i],:) = A ([i k],:) ;
%     % record the pivot row swap just made
%     p ([k i]) = p ([i k]) ;
%     % divide the pivot column (the kth column of L) by the pivot entry
%     A (k+1:n,k) = A (k+1:n,k) / A (k,k) ;
%     % subtract rank-1 outer product from the (n-k)-by-(n-k) trailing submatrix
%     A (k+1:n,k+1:n) = A (k+1:n,k+1:n) - A (k+1:n,k) * A (k,k+1:n) ;
% end















% 
% if abs(StoreA(1,:))= absAN(1,:)
%     SortedA(1,:) = StoreA(1,:)
% end
% if abs(StoreA(2,:))= absAN(2,:)
%     SortedA(2,:) = StoreA(2,:)
% end






% 
% c = 1 %counter for index
% e=1
% for e = 1:Arows
% if index(e,1) = c
%     A(c,:) = StoreA(c,:)
%     P(c,:) = StoreP(c,:)
% c= c+1
% end
% end





%for i= 1:Arows  %I is a counter to check for the # stored in the index)
    %for d= 1:Arows %D is a counter to check for the # row it actually is in the matrix A & P
       % while index(i) = d
       % A(d,:)= StoreA(d)
       % P(d,:)= StoreP(d)
    %end
    %end
%end
% 
%  I1 = index(1)
%  i = 0
%  d = 1
%  while i < Arows
%      i = i+1
%      if I1 = d
%          A(d,:)= StoreA(d,:))
%          P(d,:)= StoreP(d)
%          d= d+1
%      end
%  end
%  
%  i=1 %redefine as 1
%   
    
    
    
    
    
    
    
    
    
    
%A(1,:) = A(index(1),:)
%A(2,:) = A(index(2),:)
%A(3,:) = A(index(3),:)

