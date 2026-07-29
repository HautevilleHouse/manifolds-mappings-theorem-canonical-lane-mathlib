import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure TransversalityPackage where
  source : Type
  target : Type
  map1 : source → target
  map2 : source → target
  intersectionTransverse : Prop
  intersectionDimension : Prop
  intersectionSmooth : Prop

structure TransversalityEvidence (T : TransversalityPackage) where
  intersectionTransverseClosed : T.intersectionTransverse
  intersectionDimensionClosed : T.intersectionDimension
  intersectionSmoothClosed : T.intersectionSmooth

def TransversalityClosed (T : TransversalityPackage) : Prop :=
  T.intersectionTransverse ∧ T.intersectionDimension ∧ T.intersectionSmooth

theorem transversality_closed_from_evidence
    (T : TransversalityPackage) (E : TransversalityEvidence T) :
    TransversalityClosed T := by
  exact And.intro E.intersectionTransverseClosed
    (And.intro E.intersectionDimensionClosed E.intersectionSmoothClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse