# Linear Algebra Portfolio

**Kartik Shivshetty — CSE, KLE Technological University**

An academic portfolio for Linear Algebra, reorganized from the original interactive portfolio into a GitHub-friendly documentation repository.

## Portfolio at a glance

The portfolio connects six core Linear Algebra modules with seven computational laboratory experiments and a course project on **SVD-based audio compression**.

> **Portfolio thesis:** vectors → matrices → systems → spaces → SVD → compression

### Academic profile

| Field | Details |
|---|---|
| Student | Kartik Shivshetty |
| University | KLE Technological University |
| USN | 01FE25BCS387 |
| Roll No. | 632 |
| Focus | Embedded systems, AI, robotics, software engineering |

## Repository map

- [Course Overview](01-course-overview/README.md)
- [Matrices](02-matrices/README.md)
- [Linear Systems](03-linear-systems/README.md)
- [Vector Spaces](04-vector-spaces/README.md)
- [Linear Transformations](05-linear-transformations/README.md)
- [Eigenvalues & Eigenvectors](06-eigenvalues-eigenvectors/README.md)
- [Laboratory](07-laboratory/README.md)
- [Assignments](08-assignments/README.md)
- [Mini Project — SVD Audio Compression](09-mini-project/README.md)
- [Reflections](10-reflections/README.md)
- [Documentation](docs/portfolio-map.md)
- [Original Interactive Portfolio](web/portfolio.html)

## Chapters

### 01 — Vector Foundations

Vectors are presented as structured mathematical data elements. The portfolio covers row and column vectors, scalar operations, dot products, Euclidean norms, and vector representations used in computational systems.

### 02 — Matrices as System Operators

Matrices are treated as active operators rather than static grids. Topics include matrix-vector systems, rotations, scaling, mirroring, shearing, image matrices, and composition of transformations.

### 03 — Solving Systems of Linear Equations

The portfolio covers linear equations, simultaneous constraints, row echelon form, reduced row echelon form, Gaussian elimination, and LU factorization.

### 04 — Vector Spaces: Degrees of Freedom

This module covers closure, column space, null space, rank, nullity, and the Rank–Nullity Theorem, with applications to circuits, optimization, robotics, and machine learning.

### 05 — Orthogonality

Topics include dot-product alignment, Euclidean magnitude, projection, Gram–Schmidt orthonormalization, QR factorization, and least-squares systems.

### 06 — Eigenvalues and Eigenvectors

The portfolio introduces invariant directions, eigenvalue/eigenvector equations, characteristic polynomials, diagonalization, Markov matrices, and repeated matrix operations.

## Laboratory

Seven computational experiments accompany the theory:

1. Vector Foundations
2. Dot Products
3. Transformations
4. Gaussian Elimination
5. Subspaces
6. QR Factorization
7. Eigen Systems

See [07-laboratory/README.md](07-laboratory/README.md) for the original Google Colab links.

## Course project

### SVD-Based Audio Compression

The project reshapes a one-dimensional audio signal into a matrix and applies Singular Value Decomposition:

$$A = U\Sigma V^T$$

A rank-
$k$ approximation is then constructed using the retained singular components:

$$A_k = U_k\Sigma_kV_k^T$$

The supplied portfolio reports **k = 20**, a signal matrix of **100 × 849**, original rank **99**, MSE **1,781,629.91**, and a reported compression storage ratio of **4.38**.

See [09-mini-project/README.md](09-mini-project/README.md).

## Source preservation

The original interactive single-file portfolio is preserved at [`web/portfolio.html`](web/portfolio.html). The documentation files reorganize its content for easier academic review, version control, and GitHub navigation.

## Important scope note

No separate assignment files or independent reflection document were present in the supplied portfolio source. The corresponding folders are retained as repository sections so additional coursework can be added later without restructuring the project.


<!-- Repository history is intentionally organized into incremental academic commits. -->
