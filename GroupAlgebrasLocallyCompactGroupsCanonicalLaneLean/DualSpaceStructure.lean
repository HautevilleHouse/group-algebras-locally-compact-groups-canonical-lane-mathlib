import canonicalLaneMathlib.ConvolutionAlgebra

/-!
# Dual Space Structure Package
-/

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure DualSpacePackage {G : GroupType} {H : HaarMeasurePackage G}
    (C : ConvolutionAlgebraPackage H) where
  dualSpaceType : Type
  dualityPairing : Type
  weakTopology : Prop
  banachSpaceStructure : Prop
  weakTopologyClosed : weakTopology
  banachSpaceStructureClosed : banachSpaceStructure

structure DualSpaceEvidence {G : GroupType} {H : HaarMeasurePackage G}
    {C : ConvolutionAlgebraPackage H} (D : DualSpacePackage C) where
  weakTopologyClosed : D.weakTopology
  banachSpaceStructureClosed : D.banachSpaceStructure

def DualSpaceClosed {G : GroupType} {H : HaarMeasurePackage G}
    {C : ConvolutionAlgebraPackage H} (D : DualSpacePackage C) : Prop :=
  D.weakTopology ∧ D.banachSpaceStructure

theorem dual_space_closed_from_evidence
    {G : GroupType} {H : HaarMeasurePackage G} {C : ConvolutionAlgebraPackage H}
    (D : DualSpacePackage C) (E : DualSpaceEvidence D) : DualSpaceClosed D := by
  exact And.intro E.weakTopologyClosed E.banachSpaceStructureClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse