import canonicalLaneMathlib.AdmissibleClass

/-!
# Mapping Degree and Classification Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure MappingDegreeClassPackage where
  sourceManifold : Type u
  targetManifold : Type v
  mapping : sourceManifold → targetManifold
  degree : ℤ
  proper : Prop
  orientationClass : Prop
  degreeWellDefined : Prop

structure MappingDegreeClassEvidence (M : MappingDegreeClassPackage) where
  properClosed : M.proper
  orientationClassClosed : M.orientationClass
  degreeWellDefinedClosed : M.degreeWellDefined

def MappingDegreeClassClosed (M : MappingDegreeClassPackage) : Prop :=
  M.proper ∧ M.orientationClass ∧ M.degreeWellDefined

theorem mapping_degree_class_closed_from_evidence
    (M : MappingDegreeClassPackage) (E : MappingDegreeClassEvidence M) :
    MappingDegreeClassClosed M := by
  exact And.intro E.properClosed
    (And.intro E.orientationClassClosed E.degreeWellDefinedClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse