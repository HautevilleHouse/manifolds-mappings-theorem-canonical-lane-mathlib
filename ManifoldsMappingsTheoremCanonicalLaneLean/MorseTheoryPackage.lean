import canonicalLaneMathlib.AdmissibleClass

/-!
# Morse Theory Package for Manifold Mappings Theorem
-/

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure MorseTheoryPackage where
  manifold : Type u
  morseFunction : manifold → ℝ
  criticalPoints : Set manifold
  nondegenerate : Prop
  index : manifold → ℕ
  handleDecomposition : Prop

structure MorseTheoryEvidence (M : MorseTheoryPackage) where
  nondegenerateClosed : M.nondegenerate
  handleDecompositionClosed : M.handleDecomposition

def MorseTheoryClosed (M : MorseTheoryPackage) : Prop :=
  M.nondegenerate ∧ M.handleDecomposition

theorem morse_theory_closed_from_evidence (M : MorseTheoryPackage)
    (E : MorseTheoryEvidence M) : MorseTheoryClosed M := by
  exact And.intro E.nondegenerateClosed E.handleDecompositionClosed

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse