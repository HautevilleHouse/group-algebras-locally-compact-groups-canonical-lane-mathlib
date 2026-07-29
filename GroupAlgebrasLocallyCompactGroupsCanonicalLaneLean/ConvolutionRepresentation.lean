import canonicalLaneMathlib.AdmissibleClass

/-!
# Convolution Representation Package
-/

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure ConvolutionPackage where
  functionSpace : Type u
  productLaw : functionSpace → functionSpace → functionSpace
  associativity : Prop
  distributivity : Prop

structure ConvolutionEvidence (C : ConvolutionPackage) where
  associativityClosed : C.associativity
  distributivityClosed : C.distributivity

def ConvolutionClosed (C : ConvolutionPackage) : Prop :=
  C.associativity ∧ C.distributivity

theorem convolution_closed_from_evidence (C : ConvolutionPackage) (E : ConvolutionEvidence C) : ConvolutionClosed C := by
  exact And.intro E.associativityClosed E.distributivityClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse