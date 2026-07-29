import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure InverseFunctionPackage where
  mapping : MappingOperatorPackage
  differentialInvertibleAtPoint : Prop
  localDiffeoExists : Prop
  inverseSmooth : Prop

structure InverseFunctionEvidence (I : InverseFunctionPackage) where
  differentialInvertibleAtPointClosed : I.differentialInvertibleAtPoint
  localDiffeoExistsClosed : I.localDiffeoExists
  inverseSmoothClosed : I.inverseSmooth

def InverseFunctionClosed (I : InverseFunctionPackage) : Prop :=
  I.differentialInvertibleAtPoint ∧ I.localDiffeoExists ∧ I.inverseSmooth

theorem inverse_function_closed_from_evidence (I : InverseFunctionPackage)
    (E : InverseFunctionEvidence I) : InverseFunctionClosed I := by
  exact And.intro E.differentialInvertibleAtPointClosed
    (And.intro E.localDiffeoExistsClosed E.inverseSmoothClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse