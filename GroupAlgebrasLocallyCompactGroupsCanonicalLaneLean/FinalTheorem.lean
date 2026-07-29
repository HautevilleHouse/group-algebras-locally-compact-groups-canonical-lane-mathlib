import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.HaarMeasure
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.GroupAlgebraCstar
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.InducedRepresentation

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

def ConstrainedGroupAlgebrasClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_algebras_endgame (A : AdmissibleClass) :
    ConstrainedGroupAlgebrasClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
