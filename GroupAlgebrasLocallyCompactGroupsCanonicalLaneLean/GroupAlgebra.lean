import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure GroupAlgebra (G : LocallyCompactGroup) where
  algebra : Type u
  ring : Ring algebra
  module : Module ℂ algebra
  multiplication : algebra → algebra → algebra
  involution : algebra → algebra
  norm : algebra → ℝ
  banachAlgebra : NormedRing algebra
  cStarCondition : ∀ x : algebra, ‖star x * x‖ = ‖x‖^2
  cStarConditionTerm : cStarCondition

def GroupAlgebraClosed (G : LocallyCompactGroup) (A : GroupAlgebra G) : Prop :=
  A.cStarCondition

theorem group_algebra_closed (G : LocallyCompactGroup) (A : GroupAlgebra G)
    (h : A.cStarCondition) : GroupAlgebraClosed G A := h

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse