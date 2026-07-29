import canonicalLaneMathlib.AdmissibleClass

/-!
# Enveloping C*-Algebra Package
-/

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure EnvelopingCStarPackage where
  groupAlgebra : Type u
  norm : groupAlgebra → ℝ
  involution : groupAlgebra → groupAlgebra
  cStarIdentity : Prop

structure EnvelopingCStarEvidence (E : EnvelopingCStarPackage) where
  cStarIdentityClosed : E.cStarIdentity

def EnvelopingCStarClosed (E : EnvelopingCStarPackage) : Prop :=
  E.cStarIdentity

theorem enveloping_cstar_closed_from_evidence (E : EnvelopingCStarPackage) (Ev : EnvelopingCStarEvidence E) : EnvelopingCStarClosed E := by
  exact Ev.cStarIdentityClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse