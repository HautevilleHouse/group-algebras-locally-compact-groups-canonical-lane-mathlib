import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "group-algebras-locally-compact-groups-canonical-lane",
    theoremName := "Group Algebras of Locally Compact Groups",
    theoremObject := "Convolution algebra structure and representation theory of locally compact groups",
    classicalBoundary := "Unrestricted classical representation theory",
    manifoldConstrainedStatement := "Admissible closure via bridge and gate for group algebra structure",
    certificateLane := "group_algebras_admissible",
    carriedRemainder := "Full representation theory remains outside admissible closure"
  }

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse
