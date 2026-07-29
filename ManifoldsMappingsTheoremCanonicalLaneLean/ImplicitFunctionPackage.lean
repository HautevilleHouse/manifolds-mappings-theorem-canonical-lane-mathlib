import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMappingsTheoremCanonicalLaneLean.ManifoldsDomain

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure ImplicitFunctionPackage (M : MappingsAdmittedObject) where
  regularPoint : Prop
  partialDerivativeInvertible : Prop
  implicitMappingConstructed : Prop

structure ImplicitFunctionEvidence (M : MappingsAdmittedObject) (I : ImplicitFunctionPackage M) where
  regularPointClosed : I.regularPoint
  partialDerivativeInvertibleClosed : I.partialDerivativeInvertible
  implicitMappingConstructedClosed : I.implicitMappingConstructed

def ImplicitFunctionClosed (M : MappingsAdmittedObject) (I : ImplicitFunctionPackage M) : Prop :=
  I.regularPoint ∧ I.partialDerivativeInvertible ∧ I.implicitMappingConstructed

theorem implicit_function_closed_from_evidence (M : MappingsAdmittedObject)
    (I : ImplicitFunctionPackage M) (E : ImplicitFunctionEvidence M I) :
    ImplicitFunctionClosed M I := by
  exact And.intro E.regularPointClosed
    (And.intro E.partialDerivativeInvertibleClosed E.implicitMappingConstructedClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
