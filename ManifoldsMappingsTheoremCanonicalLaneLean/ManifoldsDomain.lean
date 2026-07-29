import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure ManifoldMappingsSpace where
  source : Type u
  target : Type v
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target

structure MappingsAdmittedObject where
  space : ManifoldMappingsSpace
  continuousMapping : Prop
  differentiableMapping : Prop
  conclusion : continuousMapping ∧ differentiableMapping

def MappingsWitnessClosed (O : MappingsAdmittedObject) : Prop :=
  O.continuousMapping ∧ O.differentiableMapping

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
