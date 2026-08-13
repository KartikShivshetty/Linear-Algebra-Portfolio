#!/usr/bin/env bash
set -e

# This script is intentionally deterministic: it stages the portfolio in
# meaningful academic increments and creates the planned commit history.
# Run it from the repository root in a fresh Git repository.

git init
git branch -M main

git add .gitignore LICENSE
git commit -m "chore: initialize repository structure"

for f in 01-course-overview/*; do git add "$f"; done
git add docs/portfolio-map.md
git commit -m "docs: add course overview"

git add 02-matrices 01-course-overview 2>/dev/null || true
git commit -m "docs: add vector foundations chapter" || true
git add 02-matrices
git commit -m "docs: add matrices chapter" || true

git add 03-linear-systems
git commit -m "docs: add linear systems chapter" || true
git add 04-vector-spaces
git commit -m "docs: add vector spaces chapter" || true
git add 05-linear-transformations
git commit -m "docs: add orthogonality chapter" || true
git add 06-eigenvalues-eigenvectors
git commit -m "docs: add eigenvalues and eigenvectors chapter" || true

git add 07-laboratory/README.md
git commit -m "docs: add laboratory journal" || true
git add 07-laboratory
git commit -m "docs: add laboratory resources" || true

git add 09-mini-project
git commit -m "docs: document SVD audio compression project" || true

git add 10-reflections docs/references.md
git commit -m "docs: add reflections and references" || true

git add web
git commit -m "docs: preserve original portfolio" || true

git add README.md docs/COMMIT_PLAN.md
git commit -m "docs: finalize portfolio README" || true

echo "History created. Review with: git log --oneline --decorate"
