import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure UnitaryRepresentationPackage (G : GroupAlgebraStructurePackage) where
  hilbertSpace : Type u
  innerProduct : HilbertSpace.Inner hilbertSpace
  representation : G.group → hilbertSpace → hilbertSpace
  unitary : Prop
  strongContinuity : Prop
  irreducibleDecomposition : Prop
  plancherelTheorem : Prop

structure UnitaryRepresentationEvidence {G : GroupAlgebraStructurePackage}
    (U : UnitaryRepresentationPackage G) where
  unitaryClosed : U.unitary
  strongContinuityClosed : U.strongContinuity
  irreducibleDecompositionClosed : U.irreducibleDecomposition
  plancherelTheoremClosed : U.plancherelTheorem

def UnitaryRepresentationClosed {G : GroupAlgebraStructurePackage}
    (U : UnitaryRepresentationPackage G) : Prop :=
  U.unitary ∧ U.strongContinuity ∧ U.irreducibleDecomposition ∧ U.plancherelTheorem

theorem unitary_representation_closed_from_evidence
    {G : GroupAlgebraStructurePackage} (U : UnitaryRepresentationPackage G)
    (E : UnitaryRepresentationEvidence U) : UnitaryRepresentationClosed U := by
  exact And.intro E.unitaryClosed
    (And.intro E.strongContinuityClosed
      (And.intro E.irreducibleDecompositionClosed E.plancherelTheoremClosed))

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse