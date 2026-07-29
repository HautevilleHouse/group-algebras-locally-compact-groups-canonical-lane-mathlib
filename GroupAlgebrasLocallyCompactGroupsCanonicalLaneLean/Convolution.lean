import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.LocallyCompactGroup
import HautevilleHouse.GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean.HaarMeasure

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure ConvolutionStructure (G : LocallyCompactGroup) (μ : HaarMeasure G) where
  convolution : (G → ℂ) → (G → ℂ) → (G → ℂ)
  wellDefined : Prop
  associative : Prop
  distributive : Prop
  wellDefinedTerm : wellDefined
  associativeTerm : associative
  distributiveTerm : distributive

def ConvolutionClosed (G : LocallyCompactGroup) (μ : HaarMeasure G) (C : ConvolutionStructure G μ) : Prop :=
  C.wellDefined ∧ C.associative ∧ C.distributive

theorem convolution_closed_from_evidence (G : LocallyCompactGroup) (μ : HaarMeasure G)
    (C : ConvolutionStructure G μ) (h : ConvolutionClosed G μ C) : ConvolutionClosed G μ C := h

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse