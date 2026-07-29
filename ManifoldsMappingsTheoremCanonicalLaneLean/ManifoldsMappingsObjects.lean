import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure ManifoldsMappingsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ManifoldsMappingsAdmittedObject where
  source : ManifoldsMappingsSpace
  target : ManifoldsMappingsSpace
  mappingExists : Prop
  mappingSmooth : Prop
  mappingInvertible : Prop
  conclusion : mappingExists

def ManifoldsMappingsWitnessClosed (O : ManifoldsMappingsAdmittedObject) : Prop :=
  O.mappingExists

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse