import HautevilleHouse.ManifoldsMappingsTheoremCanonicalLaneLean.MappingBridgeLemmas

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
