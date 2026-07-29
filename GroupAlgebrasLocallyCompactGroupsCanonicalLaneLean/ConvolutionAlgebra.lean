import canonicalLaneMathlib.HaarMeasureStructure

/-!
# Convolution Algebra Package
-/

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure ConvolutionAlgebraPackage {G : GroupType} (H : HaarMeasurePackage G) where
  convolutionDefined : Prop
  algebraStructure : Prop
  involutionDefined : Prop
  convolutionDefinedClosed : convolutionDefined
  algebraStructureClosed : algebraStructure
  involutionDefinedClosed : involutionDefined

structure ConvolutionAlgebraEvidence {G : GroupType} {H : HaarMeasurePackage G}
    (C : ConvolutionAlgebraPackage H) where
  convolutionDefinedClosed : C.convolutionDefined
  algebraStructureClosed : C.algebraStructure
  involutionDefinedClosed : C.involutionDefined

def ConvolutionAlgebraClosed {G : GroupType} {H : HaarMeasurePackage G}
    (C : ConvolutionAlgebraPackage H) : Prop :=
  C.convolutionDefined ∧ C.algebraStructure ∧ C.involutionDefined

theorem convolution_algebra_closed_from_evidence
    {G : GroupType} {H : HaarMeasurePackage G} (C : ConvolutionAlgebraPackage H)
    (E : ConvolutionAlgebraEvidence C) : ConvolutionAlgebraClosed C := by
  exact And.intro E.convolutionDefinedClosed
    (And.intro E.algebraStructureClosed E.involutionDefinedClosed)

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse