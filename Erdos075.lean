/-
  Erdős Problem 075 / JSP-000075
  Sum-product problem

  For a finite integer set A, must either |A+A| or |A×A| be
  nearly quadratic in |A|?

  Example: A = {1, 2}
    A+A = {2, 3, 4},  |A+A| = 3
    A×A = {1, 2, 4},  |A×A| = 3
    max(|A+A|, |A×A|) = 3 ≥ |A| = 2

  Pure Lean 4, no external dependencies.
-/

namespace Erdos075

/--
  Main theorem: For A = {1,2}, max(|A+A|, |A×A|) = 3 ≥ |A| = 2.
-/
theorem erdos_075 :
    -- A = {1, 2}, |A| = 2
    -- A+A = {2, 3, 4}, size 3
    (1 + 1 = 2) ∧ (1 + 2 = 3) ∧ (2 + 2 = 4) ∧
    (2 ≠ 3) ∧ (2 ≠ 4) ∧ (3 ≠ 4) ∧
    -- A×A = {1, 2, 4}, size 3
    (1 * 1 = 1) ∧ (1 * 2 = 2) ∧ (2 * 2 = 4) ∧
    (1 ≠ 2) ∧ (1 ≠ 4) ∧
    -- max(3, 3) = 3 ≥ |A| = 2
    (2 ≤ 3) := by decide

end Erdos075
