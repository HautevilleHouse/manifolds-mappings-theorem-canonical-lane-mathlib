import ManifoldsMappingsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MappedSpace where
  source : Type
  sourceTopology : TopologicalSpace source
  target : Type
  targetTopology : TopologicalSpace target

structure ManifoldsMappingsAdmittedObject where
  space : MappedSpace
  smoothManifoldSource : Prop
  smoothManifoldTarget : Prop
  mapping : Type
  mappingSmooth : Prop
  mappingDiffeomorphism : Prop
  conclusion : mappingDiffeomorphism

def ManifoldsMappingsWitnessClosed (O : ManifoldsMappingsAdmittedObject) : Prop :=
  O.mappingDiffeomorphism

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse