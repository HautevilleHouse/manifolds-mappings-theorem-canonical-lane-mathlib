import ManifoldsMappingsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ManifoldsMappingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ManifoldsMappingsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse