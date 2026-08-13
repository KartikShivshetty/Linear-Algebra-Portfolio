# Eigenvalues and Eigenvectors

## Eigenvalue identity

The portfolio uses the standard invariant-direction relationship:

$$AX=\lambda X$$

An eigenvector preserves its direction under multiplication by the matrix while its magnitude is scaled by the corresponding eigenvalue.

## Characteristic equation

$$\det(A-\lambda I)=0$$

## Diagonalization

For a diagonalizable matrix:

$$A=PDP^{-1}$$

and therefore:

$$A^n=PD^nP^{-1}$$

## Applications in the portfolio

- Network influence mapping
- Dominant eigenvector isolation
- Markov state matrices
- Iterative power methods
- Web-scale ranking concepts

The supplied example uses:

$$A=\begin{bmatrix}4&0\\0&2\end{bmatrix}$$

with characteristic roots $\lambda_1=4$ and $\lambda_2=2$.
