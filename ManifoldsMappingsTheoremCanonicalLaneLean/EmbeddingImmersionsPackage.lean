import canonicalLaneMathlib.AdmissibleClass

/-!
# Embedding and Immersion Package for Manifold Mappings Theorem
-/

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure EmbeddingImmersionsPackage where
  sourceManifold : Type u
  targetManifold : Type v
  mapping : sourceManifold → targetManifold
  immersion : Prop
  embedding : Prop
  submanifoldCondition : Prop

structure EmbeddingImmersionsEvidence (E : EmbeddingImmersionsPackage) where
  immersionClosed : E.immersion
  embeddingClosed : E.embedding
  submanifoldConditionClosed : E.submanifoldCondition

def EmbeddingImmersionsClosed (E : EmbeddingImmersionsPackage) : Prop :=
  E.immersion ∧ E.embedding ∧ E.submanifoldCondition

theorem embedding_immersions_closed_from_evidence
    (E : EmbeddingImmersionsPackage) (Ev : EmbeddingImmersionsEvidence E) :
    EmbeddingImmersionsClosed E := by
  exact And.intro Ev.immersionClosed
    (And.intro Ev.embeddingClosed Ev.submanifoldConditionClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse