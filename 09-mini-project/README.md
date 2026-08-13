# Mini Project — SVD-Based Audio Compression

## Overview

The course project converts a one-dimensional audio waveform into a two-dimensional matrix and applies Singular Value Decomposition (SVD) for low-rank compression.

The original portfolio describes the signal as:

$$x=[x_1,x_2,\dots,x_N]\in\mathbb{R}^N$$

and reshapes it into:

$$A\in\mathbb{R}^{m\times n}$$

with fixed height $m=100$.

## Mathematical method

SVD decomposes the signal matrix as:

$$A=U\Sigma V^T$$

Only the most significant singular components are retained. For $k=20$:

$$A_k=U_k\Sigma_kV_k^T$$

The reconstructed matrix is flattened back into a one-dimensional signal.

## Reported results

| Parameter | Value | Interpretation from portfolio |
|---|---:|---|
| Signal matrix | 100 × 849 | 84,900 total samples |
| Original rank | 99 | High data content across signal channels |
| Retained components | 20 | Top portion of the rank spectrum |
| MSE | 1,781,629.91 | Reconstruction distortion metric reported by portfolio |
| Compression storage ratio | 4.38 | Reported compressed storage ratio |

## Core implementation

The source portfolio uses NumPy SVD with `full_matrices=False`, truncates to `k = 20`, reconstructs using matrix multiplication, flattens the result, and computes mean squared error.

```python
import numpy as np
import matplotlib.pyplot as plt
from scipy.io import wavfile

U, S, VT = np.linalg.svd(A, full_matrices=False)

k = 20
Ak = U[:, :k] @ np.diag(S[:k]) @ VT[:k, :]

reconstructed = Ak.reshape(-1)
mse = np.mean((original - reconstructed) ** 2)
```

## Project team

| USN | Name | Roll |
|---|---|---:|
| 01FE25BCS384 | T Thirthachandra | 629 |
| 01FE25BCS385 | Himank Joshi | 630 |
| 01FE25BCS386 | Ankit Kumar | 631 |
| 01FE25BCS387 | Kartik Shivshetty | 632 |

### Faculty guides

- **Mathematics:** Ms. Vinutha Hanumantappa — School of Core Sciences, KLE Technological University
- **Computer Science:** Ms. Priya Ma'am — School of Computer Science & Engineering, KLE Tech

## Original report

The original portfolio links the group report through Google Drive. The repository preserves that link in the project source, but does not claim ownership or redistribution rights over the external document.
