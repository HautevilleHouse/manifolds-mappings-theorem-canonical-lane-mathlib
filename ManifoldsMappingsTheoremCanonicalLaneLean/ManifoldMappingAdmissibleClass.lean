import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure ManifoldMappingObject where
  source : Type u
  target : Type v
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target
  mapping : source → target
  smooth : Prop
  differential : Type w
  mappingConclusion : smooth

structure AdmissibleClass where
  object : ManifoldMappingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.mappingConclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
