import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure RegularRepresentationPackage (G : Type u) [TopologicalSpace G] [Group G] [TopologicalGroup G] where
  leftRegularAction : Type v
  rightRegularAction : Type w
  convolutionRepresentation : Prop
  unitaryProperty : Prop

structure RegularRepresentationEvidence {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G]
    (R : RegularRepresentationPackage G) where
  leftRegularActionClosed : R.leftRegularAction
  rightRegularActionClosed : R.rightRegularAction
  convolutionRepresentationClosed : R.convolutionRepresentation
  unitaryPropertyClosed : R.unitaryProperty

def RegularRepresentationClosed {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G]
    (R : RegularRepresentationPackage G) : Prop :=
  R.convolutionRepresentation ∧ R.unitaryProperty

theorem regular_representation_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G]
    (R : RegularRepresentationPackage G) (E : RegularRepresentationEvidence R) : RegularRepresentationClosed R := by
  exact And.intro E.convolutionRepresentationClosed E.unitaryPropertyClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse