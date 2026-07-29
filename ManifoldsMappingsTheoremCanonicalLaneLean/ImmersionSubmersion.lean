import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure ImmersionSubmersionPackage where
  mapping : MappingOperatorPackage
  rankConstant : Prop
  immersion : Prop
  submersion : Prop
  constantRankTheorem : Prop

structure ImmersionSubmersionEvidence (I : ImmersionSubmersionPackage) where
  rankConstantClosed : I.rankConstant
  immersionClosed : I.immersion
  submersionClosed : I.submersion
  constantRankTheoremClosed : I.constantRankTheorem

def ImmersionSubmersionClosed (I : ImmersionSubmersionPackage) : Prop :=
  I.rankConstant ∧ I.immersion ∧ I.submersion ∧ I.constantRankTheorem

theorem immersion_submersion_closed_from_evidence (I : ImmersionSubmersionPackage)
    (E : ImmersionSubmersionEvidence I) : ImmersionSubmersionClosed I := by
  exact And.intro E.rankConstantClosed
    (And.intro E.immersionClosed
      (And.intro E.submersionClosed E.constantRankTheoremClosed))

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse