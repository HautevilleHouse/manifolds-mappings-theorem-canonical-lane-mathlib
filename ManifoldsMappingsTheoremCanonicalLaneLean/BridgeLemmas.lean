import ManifoldsMappingsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ManifoldsMappingsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse