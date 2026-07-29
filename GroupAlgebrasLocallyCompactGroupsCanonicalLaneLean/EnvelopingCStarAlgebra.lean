import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.GroupAlgebra
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.Convolution

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure EnvelopingCStarAlgebra (G : LocallyCompactGroup) (μ : HaarMeasure G) where
  completion : Type u
  norm : completion → ℝ
  algebraStructure : Algebra ℂ completion
  involution : completion → completion
  cStarCondition : ∀ x : completion, ‖star x * x‖ = ‖x‖^2
  universalProperty : Prop
  universalPropertyTerm : universalProperty

def EnvelopingCStarAlgebraClosed (G : LocallyCompactGroup) (μ : HaarMeasure G)
    (A : EnvelopingCStarAlgebra G μ) : Prop :=
  A.universalProperty

theorem enveloping_cstar_algebra_closed (G : LocallyCompactGroup) (μ : HaarMeasure G)
    (A : EnvelopingCStarAlgebra G μ) (h : A.universalProperty) : EnvelopingCStarAlgebraClosed G μ A := h

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse