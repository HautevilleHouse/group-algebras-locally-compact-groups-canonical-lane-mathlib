import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure InducedRepresentationPackage where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : Group group
  topologicalGroup : TopologicalGroup group
  closedSubgroup : Set group
  subgroupTopology : TopologicalSpace closedSubgroup
  subgroupGroup : Group closedSubgroup
  representation : Representation closedSubgroup
  inducedSpace : Type v
  inducedRepresentation : Representation group
  inductionFunctorial : Prop
  unitaryInduction : Prop

structure InducedRepresentationEvidence (I : InducedRepresentationPackage) where
  inductionFunctorialClosed : I.inductionFunctorial
  unitaryInductionClosed : I.unitaryInduction

def InducedRepresentationClosed (I : InducedRepresentationPackage) : Prop :=
  I.inductionFunctorial ∧ I.unitaryInduction

theorem induced_representation_closed_from_evidence (I : InducedRepresentationPackage)
    (E : InducedRepresentationEvidence I) : InducedRepresentationClosed I := by
  exact And.intro E.inductionFunctorialClosed E.unitaryInductionClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
