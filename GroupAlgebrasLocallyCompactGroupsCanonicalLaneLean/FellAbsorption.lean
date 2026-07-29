import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure FellAbsorptionPackage {G : GroupAlgebraStructurePackage}
    (U : UnitaryRepresentationPackage G) where
  inducedRepresentation : Type u
  equivalence : Prop
  absorptionProperty : Prop

structure FellAbsorptionEvidence {G : GroupAlgebraStructurePackage}
    {U : UnitaryRepresentationPackage G} (F : FellAbsorptionPackage U) where
  equivalenceClosed : F.equivalence
  absorptionPropertyClosed : F.absorptionProperty

def FellAbsorptionClosed {G : GroupAlgebraStructurePackage}
    {U : UnitaryRepresentationPackage G} (F : FellAbsorptionPackage U) : Prop :=
  F.equivalence ∧ F.absorptionProperty

theorem fell_absorption_closed_from_evidence
    {G : GroupAlgebraStructurePackage} {U : UnitaryRepresentationPackage G}
    (F : FellAbsorptionPackage U) (E : FellAbsorptionEvidence F) :
    FellAbsorptionClosed F := by
  exact And.intro E.equivalenceClosed E.absorptionPropertyClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse