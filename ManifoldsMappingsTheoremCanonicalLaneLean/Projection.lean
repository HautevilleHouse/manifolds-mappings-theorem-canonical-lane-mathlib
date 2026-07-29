import ManifoldsMappingsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MappingsEndgameState where
  object : ManifoldsMappingsAdmittedObject

def mappingsProjection : Projection MappingsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem mappings_projection_idempotent (x : MappingsEndgameState) :
    mappingsProjection.toFun (mappingsProjection.toFun x) = mappingsProjection.toFun x := by
  exact mappingsProjection.idempotent x

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse