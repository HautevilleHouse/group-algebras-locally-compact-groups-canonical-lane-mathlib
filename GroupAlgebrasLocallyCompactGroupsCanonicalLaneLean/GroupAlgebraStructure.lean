import canonicalLaneMathlib.AdmissibleClass

/-!
# Group Algebra Structure Package
-/

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure GroupAlgebraPackage where
  group : Type u
  ring : Type v
  algebraAction : group → ring → ring
  associativity : Prop
  unitPreserving : Prop

structure GroupAlgebraEvidence (G : GroupAlgebraPackage) where
  associativityClosed : G.associativity
  unitPreservingClosed : G.unitPreserving

def GroupAlgebraClosed (G : GroupAlgebraPackage) : Prop :=
  G.associativity ∧ G.unitPreserving

theorem group_algebra_closed_from_evidence (G : GroupAlgebraPackage) (E : GroupAlgebraEvidence G) : GroupAlgebraClosed G := by
  exact And.intro E.associativityClosed E.unitPreservingClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse