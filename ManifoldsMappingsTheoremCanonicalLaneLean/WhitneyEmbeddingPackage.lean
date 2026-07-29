import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure WhitneyEmbeddingPackage where
  manifoldDimension : Nat
  euclideanDimension : Nat
  embeddingExists : Prop
  embeddingSmooth : Prop
  embeddingInjective : Prop
  embeddingProper : Prop

structure WhitneyEmbeddingEvidence (W : WhitneyEmbeddingPackage) where
  embeddingExistsClosed : W.embeddingExists
  embeddingSmoothClosed : W.embeddingSmooth
  embeddingInjectiveClosed : W.embeddingInjective
  embeddingProperClosed : W.embeddingProper

def WhitneyEmbeddingClosed (W : WhitneyEmbeddingPackage) : Prop :=
  W.embeddingExists ∧ W.embeddingSmooth ∧ W.embeddingInjective ∧ W.embeddingProper

theorem whitney_embedding_closed_from_evidence
    (W : WhitneyEmbeddingPackage) (E : WhitneyEmbeddingEvidence W) :
    WhitneyEmbeddingClosed W := by
  exact And.intro E.embeddingExistsClosed
    (And.intro E.embeddingSmoothClosed
      (And.intro E.embeddingInjectiveClosed E.embeddingProperClosed))

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse