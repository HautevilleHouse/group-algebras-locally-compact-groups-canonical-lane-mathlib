import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure FourierTransformPackage (G : Type u) [TopologicalSpace G] [Group G] [TopologicalGroup G] [Abelian G] where
  dualGroup : Type v
  pontryaginDuality : Prop
  fourierTransform : Prop
  plancherelTheorem : Prop

structure FourierTransformEvidence {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G] [Abelian G]
    (F : FourierTransformPackage G) where
  dualGroupClosed : F.dualGroup
  pontryaginDualityClosed : F.pontryaginDuality
  fourierTransformClosed : F.fourierTransform
  plancherelTheoremClosed : F.plancherelTheorem

def FourierTransformClosed {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G] [Abelian G]
    (F : FourierTransformPackage G) : Prop :=
  F.fourierTransform ∧ F.plancherelTheorem

theorem fourier_transform_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G] [Abelian G]
    (F : FourierTransformPackage G) (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.fourierTransformClosed E.plancherelTheoremClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse