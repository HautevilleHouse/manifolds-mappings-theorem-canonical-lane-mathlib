import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure SardTheoremPackage where
  sourceDimension : Nat
  targetDimension : Nat
  regularityClass : Nat
  criticalSet : Type
  criticalSetMeasureZero : Prop
  regularValuesDense : Prop

structure SardTheoremEvidence (S : SardTheoremPackage) where
  criticalSetMeasureZeroClosed : S.criticalSetMeasureZero
  regularValuesDenseClosed : S.regularValuesDense

def SardTheoremClosed (S : SardTheoremPackage) : Prop :=
  S.criticalSetMeasureZero ∧ S.regularValuesDense

theorem sard_theorem_closed_from_evidence
    (S : SardTheoremPackage) (E : SardTheoremEvidence S) :
    SardTheoremClosed S := by
  exact And.intro E.criticalSetMeasureZeroClosed E.regularValuesDenseClosed

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse