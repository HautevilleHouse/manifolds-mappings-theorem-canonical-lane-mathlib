import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMappingsTheoremCanonicalLaneLean.ManifoldsDomain

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure InverseFunctionPackage (M : MappingsAdmittedObject) where
  localDiffeomorphism : Prop
  derivativeInvertible : Prop
  inverseMappingConstructed : Prop

structure InverseFunctionEvidence (M : MappingsAdmittedObject) (I : InverseFunctionPackage M) where
  localDiffeomorphismClosed : I.localDiffeomorphism
  derivativeInvertibleClosed : I.derivativeInvertible
  inverseMappingConstructedClosed : I.inverseMappingConstructed

def InverseFunctionClosed (M : MappingsAdmittedObject) (I : InverseFunctionPackage M) : Prop :=
  I.localDiffeomorphism ∧ I.derivativeInvertible ∧ I.inverseMappingConstructed

theorem inverse_function_closed_from_evidence (M : MappingsAdmittedObject)
    (I : InverseFunctionPackage M) (E : InverseFunctionEvidence M I) :
    InverseFunctionClosed M I := by
  exact And.intro E.localDiffeomorphismClosed
    (And.intro E.derivativeInvertibleClosed E.inverseMappingConstructedClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
