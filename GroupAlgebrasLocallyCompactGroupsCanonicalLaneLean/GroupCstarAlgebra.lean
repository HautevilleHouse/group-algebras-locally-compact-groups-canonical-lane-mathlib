import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure GroupCstarAlgebraPackage (G : Type u) [TopologicalSpace G] [Group G] [TopologicalGroup G] where
  convolutionAlgebra : Type v
  involution : Prop
  cstarIdentity : Prop
  completion : Prop

structure GroupCstarAlgebraEvidence {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G]
    (A : GroupCstarAlgebraPackage G) where
  convolutionAlgebraClosed : A.convolutionAlgebra
  involutionClosed : A.involution
  cstarIdentityClosed : A.cstarIdentity
  completionClosed : A.completion

def GroupCstarAlgebraClosed {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G]
    (A : GroupCstarAlgebraPackage G) : Prop :=
  A.convolutionAlgebra ∧ A.involution ∧ A.cstarIdentity ∧ A.completion

theorem group_cstar_algebra_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G] [TopologicalGroup G]
    (A : GroupCstarAlgebraPackage G) (E : GroupCstarAlgebraEvidence A) : GroupCstarAlgebraClosed A := by
  exact And.intro E.convolutionAlgebraClosed
    (And.intro E.involutionClosed (And.intro E.cstarIdentityClosed E.completionClosed))

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse