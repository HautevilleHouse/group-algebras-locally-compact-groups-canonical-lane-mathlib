import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact trivial

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse