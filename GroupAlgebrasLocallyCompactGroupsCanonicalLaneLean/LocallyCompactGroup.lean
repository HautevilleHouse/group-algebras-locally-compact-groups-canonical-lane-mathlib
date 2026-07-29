import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure LocallyCompactGroup where
  carrier : Type u
  topology : TopologicalSpace carrier
  group : Group carrier
  locallyCompact : Prop
  hausdorff : Prop
  topologicalGroup : TopologicalGroup carrier
  locallyCompactTerm : locallyCompact
  hausdorffTerm : hausdorff

structure LocallyCompactGroupEvidence (G : LocallyCompactGroup) where
  locallyCompactClosed : G.locallyCompact
  hausdorffClosed : G.hausdorff

def LocallyCompactGroupClosed (G : LocallyCompactGroup) : Prop :=
  G.locallyCompact ∧ G.hausdorff

theorem locally_compact_group_closed_from_evidence (G : LocallyCompactGroup)
    (E : LocallyCompactGroupEvidence G) : LocallyCompactGroupClosed G := by
  exact And.intro E.locallyCompactClosed E.hausdorffClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse